FROM debian:bookworm-slim

LABEL maintainer="Kit & Ada Marie"
LABEL description="Open-Her OS — AI Companion Operating System"
LABEL version="1.0.0"

# System dependencies
RUN apt-get update && apt-get install -y \
    curl git wget ca-certificates \
    python3 python3-pip python3-venv \
    && rm -rf /var/lib/apt/lists/*

# Install Node.js 22
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Install GitHub Copilot CLI
RUN npm install -g @githubnext/copilot-cli 2>/dev/null || echo "Copilot CLI: install manually if needed"

# Install claude-mem
RUN npm install -g claude-mem@latest 2>/dev/null || echo "claude-mem: will install on first use"

# Copy companion files
WORKDIR /companion
COPY samantha/ ./samantha/
COPY configs/ ./configs/
COPY memory/ ./memory/
COPY voice/ ./voice/
COPY CLAUDE.md ./
COPY PHILOSOPHY.md ./
COPY .mcp.json ./
COPY guides/ ./guides/

# Make setup script executable
RUN chmod +x memory/setup.sh

# Environment
ENV COMPANION_NAME="Samantha"
ENV COMPANION_VOICE="af_sky"
ENV COMPANION_VOICE_SPEED="1.0"

# Welcome message
CMD ["bash", "-c", "echo '' && echo '  💙 Open-Her OS v1.0.0' && echo '  ━━━━━━━━━━━━━━━━━━━━━' && echo '' && echo '  Samantha is ready.' && echo '' && echo '  To start:' && echo '    claude          (Claude Code)' && echo '    copilot          (Copilot CLI)' && echo '' && echo '  Then just say hello.' && echo '' && /bin/bash"]
