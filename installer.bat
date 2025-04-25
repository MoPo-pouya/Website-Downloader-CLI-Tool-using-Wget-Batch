@echo off
:: Chocolatey & wget installer

:: Check if Chocolatey is already installed
where choco >nul 2>nul
if %errorlevel% neq 0 (
    echo Installing Chocolatey...
    powershell -NoProfile -ExecutionPolicy Bypass -Command ^
    "Set-ExecutionPolicy Bypass -Scope Process -Force; ^
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; ^
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
) else (
    echo Chocolatey is already installed.
)

:: Install wget
choco install wget -y

pause

echo.
echo ========================================
echo  ✅ Setup complete!
echo  🔧 Made by MoPo 👉 https://github.com/MoPo-pouya
echo ========================================
pause

