$link = "https://github.com/RMS-Studios/Installer/releases/latest/download/RMSInstallerCli.exe"

$outfile = "$env:TEMP\RMSInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
