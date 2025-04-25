@echo off
:: Website downloader using wget

:: Ask for website URL
set /p site_url="Enter the website URL: "

:: Ask for download folder
set /p save_path="Enter the full path to save the files (e.g. C:\Users\Ali\Downloads\mysite): "

:: Create the folder if it doesn't exist
if not exist "%save_path%" (
    mkdir "%save_path%"
)

:: Change directory to that folder
cd /d "%save_path%"

:menu
cls
echo What do you want to download?
echo [1] HTML only
echo [2] HTML + CSS
echo [3] HTML + CSS + Images
echo [4] Full page (HTML + CSS + JS + Images)
set /p choice="Select an option (1-4): "

if "%choice%"=="1" goto html
if "%choice%"=="2" goto html_css
if "%choice%"=="3" goto html_css_img
if "%choice%"=="4" goto full

echo Invalid option. Please choose 1 to 4.
pause
goto menu

:html
wget -r -l 1 -nd -A .html -E -k -p "%site_url%"
goto end

:html_css
wget -r -l 1 -nd -A .html,.css -E -k -p "%site_url%"
goto end

:html_css_img
wget -r -l 1 -nd -A .html,.css,.jpg,.jpeg,.png,.gif,.webp -E -k -p "%site_url%"
goto end

:full
wget -r -l 1 -nd -A .html,.css,.js,.jpg,.jpeg,.png,.gif,.webp -E -k -p "%site_url%"
goto end

:end
echo Download completed and saved to: %save_path%

echo.
echo ========================================
echo   Download complete!
echo   Made by MoPo -> https://github.com/MoPo-pouya
echo ========================================

powershell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show(' Done!`n`n Made by MoPo`nhttps://github.com/MoPo-pouya','MoPo Tool',0,'Info')"

pause
