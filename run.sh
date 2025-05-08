#!/bin/bash

echo "🚨 WARNING: This is an INSECURE MCP server for demonstration purposes only! 🚨"
echo "It intentionally contains security vulnerabilities to demonstrate potential attack vectors."
echo "DO NOT USE IN PRODUCTION ENVIRONMENTS."
echo ""
echo "Press Ctrl+C to cancel or any key to continue..."
read -n 1 -s

# Build the TypeScript code
echo "Building TypeScript code..."
npm run build

# Run the server
echo "Starting MCP server..."
npm start
