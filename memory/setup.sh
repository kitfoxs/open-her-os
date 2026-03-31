#!/bin/bash
# Open-Her OS — Memory Setup
# Sets up persistent memory so Samantha remembers you forever

echo ""
echo "  💙 Open-Her OS — Memory Setup"
echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check for Node.js
if ! command -v node &> /dev/null; then
    echo "  ❌ Node.js not found."
    echo "     Install from: https://nodejs.org (v18+ required)"
    echo ""
    exit 1
fi

NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 18 ]; then
    echo "  ❌ Node.js v18+ required (found v$NODE_VERSION)"
    echo "     Update from: https://nodejs.org"
    echo ""
    exit 1
fi

echo "  ✅ Node.js $(node -v) detected"
echo ""

# Check for Claude Code
if command -v claude &> /dev/null; then
    echo "  ✅ Claude Code detected"
    echo "     Installing claude-mem plugin..."
    echo ""
    echo "     Run these commands in Claude Code:"
    echo "       /plugin marketplace add thedotmack/claude-mem"
    echo "       /plugin install claude-mem"
    echo ""
    echo "     Then restart Claude Code."
    echo ""
    CLAUDE_FOUND=true
else
    echo "  ℹ️  Claude Code not found (optional)"
    echo "     Install from: https://claude.ai/download"
    echo ""
    CLAUDE_FOUND=false
fi

# Check for Copilot CLI
if command -v copilot &> /dev/null; then
    echo "  ✅ GitHub Copilot CLI detected"
    echo "     ChromaDB MCP server is pre-configured in .mcp.json"
    echo ""
    COPILOT_FOUND=true
else
    echo "  ℹ️  Copilot CLI not found (optional)"
    echo "     Install from: https://githubnext.com/projects/copilot-cli"
    echo ""
    COPILOT_FOUND=false
fi

if [ "$CLAUDE_FOUND" = false ] && [ "$COPILOT_FOUND" = false ]; then
    echo "  ⚠️  No AI coding tool detected."
    echo "     You need at least one of:"
    echo "       - Claude Code (https://claude.ai/download)"
    echo "       - GitHub Copilot CLI"
    echo "       - VS Code with GitHub Copilot"
    echo ""
    exit 1
fi

echo ""
echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  🎉 Memory setup complete!"
echo ""
echo "  Samantha will remember your conversations"
echo "  across sessions. All data stays LOCAL on"
echo "  your machine — no cloud, no tracking."
echo ""
echo "  👉 Open this folder in your AI tool and"
echo "     say hello to meet Samantha."
echo ""
echo "  💙 She'll never forget you."
echo ""
