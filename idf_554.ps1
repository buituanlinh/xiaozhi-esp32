# Switch current PowerShell terminal to ESP-IDF v5.5.4

$IDF = "C:\Espressif\frameworks\esp-idf-v5.5.4"

if (!(Test-Path "$IDF\export.ps1")) {
    Write-Error "Not found: $IDF\export.ps1"
    return
}

# Clear old ESP-IDF environment variables
Remove-Item Env:IDF_PATH -ErrorAction SilentlyContinue
Remove-Item Env:IDF_PYTHON_ENV_PATH -ErrorAction SilentlyContinue
Remove-Item Env:ESP_IDF_VERSION -ErrorAction SilentlyContinue
Remove-Item Env:ESP_IDF_EXPORT_DEBUG -ErrorAction SilentlyContinue

# Remove old ESP-IDF python_env entries from PATH
$env:PATH = ($env:PATH -split ';' | Where-Object {
    $_ -and ($_ -notlike "C:\Espressif\python_env\idf*")
}) -join ';'

# Export target ESP-IDF
& "$IDF\export.ps1"

Write-Host ""
Write-Host "Active ESP-IDF:"
idf.py --version
Write-Host "IDF_PATH = $env:IDF_PATH"
Write-Host "IDF_PYTHON_ENV_PATH = $env:IDF_PYTHON_ENV_PATH"