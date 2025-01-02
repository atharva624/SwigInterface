# Define the directory containing the header files and the output SWIG interface file
$headerDir = "C:\Users\Atharva Hambarde\source\repos\SwigInterface"  # Update with the actual path where MyClass.h is located
$outputFile = "MyClass.i"           # The name of the SWIG interface file
$moduleName = "MyClass"             # The module name for SWIG

# Write the SWIG module declaration to the interface file
$interface = "module $moduleName"
$interface | Out-File $outputFile -Force

# Add opening block for including headers
"%%{" | Out-File $outputFile -Append

# Include all headers in the %{ } block for direct inclusion in the generated wrapper
Get-ChildItem $headerDir -Filter *.h | ForEach-Object {
    "#include `"$($_.FullName)`"" | Out-File $outputFile -Append
}

"%%}" | Out-File $outputFile -Append

# Add any other necessary SWIG interface declarations (optional)
# For example, exporting specific C++ classes or functions:
"# Export MyClass" | Out-File $outputFile -Append
#"swig -c++ -csharp MyClass" | Out-File $outputFile -Append

# Optionally, add more SWIG interface features or bindings here as needed

Write-Host "SWIG interface file generated: $outputFile"
