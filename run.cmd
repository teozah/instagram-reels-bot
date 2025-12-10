@echo off
echo ========================================
echo Instagram Reels Reposter Bot - Appium
echo ========================================
echo.
echo Checking prerequisites...
echo.

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python is not installed or not in PATH
    echo Please install Python from https://www.python.org/
    pause
    exit /b 1
)

REM Check if ADB is installed
adb version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] ADB is not installed or not in PATH
    echo Please install Android SDK Platform Tools
    pause
    exit /b 1
)

REM Check if device is connected
echo Checking ADB devices...
adb devices
echo.

REM Check if Appium server is running
echo [INFO] Make sure Appium server is running in another terminal
echo [INFO] Run: appium
echo.

echo Starting bot...
echo Press Ctrl+C to stop
echo ========================================
echo.

python bot.py

pause
