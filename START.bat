@echo off
REM 🚀 EzClickVideoMaker Launch Script for Windows
REM This script will launch your app automatically

echo 🚀 LAUNCHING EzClickVideoMaker...
echo =================================

REM Check if Node.js is installed
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js 16+ first.
    pause
    exit /b 1
)

echo ✅ Node.js detected

REM Install dependencies if node_modules doesn't exist
if not exist "node_modules" (
    echo 📦 Installing dependencies...
    npm install
    if %errorlevel% neq 0 (
        echo ❌ Failed to install dependencies
        pause
        exit /b 1
    )
    echo ✅ Dependencies installed
) else (
    echo ✅ Dependencies already installed
)

REM Launch the application
echo 🎯 Starting development server...
echo 📱 App will be available at: http://localhost:5173
echo 🔄 Press Ctrl+C to stop the server
echo =================================

REM Start the dev server
npm run dev

pause