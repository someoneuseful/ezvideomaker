#!/bin/bash

# 🚀 EzClickVideoMaker Launch Script
# This script will launch your app automatically

echo "🚀 LAUNCHING EzClickVideoMaker..."
echo "================================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 16+ first."
    exit 1
fi

# Check Node version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 16 ]; then
    echo "❌ Node.js version 16+ required. Current version: $(node -v)"
    exit 1
fi

echo "✅ Node.js $(node -v) detected"

# Install dependencies if node_modules doesn't exist
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    npm install
    if [ $? -ne 0 ]; then
        echo "❌ Failed to install dependencies"
        exit 1
    fi
    echo "✅ Dependencies installed"
else
    echo "✅ Dependencies already installed"
fi

# Launch the application
echo "🎯 Starting development server..."
echo "📱 App will be available at: http://localhost:5173"
echo "🔄 Press Ctrl+C to stop the server"
echo "================================="

# Start the dev server
npm run dev