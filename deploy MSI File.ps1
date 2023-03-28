# Define the path to the MSI file
$msiPath = "C:\path\to\your\installer.msi"

# Check if the MSI file exists
if (Test-Path $msiPath) {
    # Install the MSI file using the msiexec command
    $arguments = "/i `"$msiPath`" /qn"
    Start-Process "msiexec" -ArgumentList $arguments -Wait
    Write-Host "Installation completed successfully."
} else {
    Write-Host "The MSI file does not exist."
}