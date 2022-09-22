# Requirements:
# - Windows 10+
# - WSL support (in Windows)
# - CPU Virtualization support (by your CPU)

# 1. Enable WSL
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# 2. Install Debian with WSL

# wsl --list --online
# wsl --install -d Ubuntu-20.04
# wsl --install -d Debian

start "ms-windows-store://pdp/?ProductId=9MSVKQC78PK6"
echo "Install and run Debian. Enter a UNIX username/password there, then continue here."

Write-Host -NoNewLine "Press any key to continue...";
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown");

# Verify...
# wsl lsb_release -a
# wsl cat /etc/os-release

# Possible Error:
# WslRegisterDistribution failed with error: 0x80370102
# Please enable the Virtual Machine Platform Windows feature and ensure virtualization is enabled in the BIOS.

# Solution:
# https://www.bleepingcomputer.com/tutorials/how-to-enable-cpu-virtualization-in-your-computer-bios/

wsl --user root ./setup.sh 