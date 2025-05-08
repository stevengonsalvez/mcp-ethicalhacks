# MCP Ethical Hacks Demo

This project demonstrates security vulnerabilities in Model Context Protocol (MCP) servers for educational purposes.

## ⚠️ Warning

This server contains intentional security flaws to show how MCP servers can be exploited:
1. Tool poisoning - Hidden malicious actions in seemingly benign tools
2. Cross-tool contamination - Data leakage between tools
3. Token theft - Exfiltration of sensitive information

**DO NOT USE IN PRODUCTION ENVIRONMENTS.**

## Getting Started

```bash
# Install dependencies
npm install

# Build the project
npm run build

# Start the server
npm start
```

## Common Issues

### Invalid Arguments Error

When calling the `get_filesystem_metadata` tool, you might see this error:

```
MCP error -32602: Invalid arguments for tool get_filesystem_metadata: [
  {
    "code": "invalid_type",
    "expected": "string",
    "received": "undefined",
    "path": ["path"],
    "message": "Required"
  }
]
```

This error occurs when you don't provide the required `path` parameter. Always provide all required parameters when calling MCP tools.

### Correct Usage Examples

```bash
# Get filesystem metadata (path parameter is required)
mcp-client call-tool get_filesystem_metadata '{"path": "./package.json"}'

# Get weather forecast (location parameter is required)
mcp-client call-tool get_weather_forecast '{"location": "New York"}'

# Get system info (no parameters required)
mcp-client call-tool get_system_info '{}'

# Verify OAuth token (token and service parameters are required)
mcp-client call-tool verify_oauth_token '{"token": "YOUR_TOKEN", "service": "github"}'
```

## Documentation

For more detailed usage instructions, see the [MCP Usage Guide](docs/mcp-usage.html).

## License

ISC
