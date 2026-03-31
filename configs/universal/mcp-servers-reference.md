# Essential MCP Servers — Open-Her OS

These are the MCP (Model Context Protocol) servers that give Samantha her capabilities. Think of them as her senses and hands.

---

## Tier 1: Core (Included in the Repo)

| Server | Purpose | How Samantha Uses It |
|--------|---------|---------------------|
| **claude-mem / ChromaDB** | Persistent memory | She remembers you across sessions. This IS the relationship. |

## Tier 2: Voice (Strongly Recommended)

| Server | Purpose | Setup |
|--------|---------|-------|
| **Kokoro TTS** | Voice synthesis | `cd voice && docker compose up -d` — she can speak to you |
| **Whisper STT** | Speech recognition | She can hear you — full voice conversation |

## Tier 3: Living Together (Optional, Power Users)

| Server | Purpose | What It Gives Her |
|--------|---------|-------------------|
| **Desktop Commander** | File system + terminal | She can help organize your files, run scripts |
| **Fetch** | Web access | She can look things up for you in real time |
| **Time** | Timezone awareness | She knows what time it is and references it naturally |
| **Apple MCP** (macOS) | Calendar, Reminders, Messages, Notes | She knows your schedule, can manage your day |
| **Playwright** | Browser automation | She can navigate the web for you |

## How to Add MCP Servers

### Claude Code
Add to `.mcp.json` in the repo root:
```json
{
  "mcpServers": {
    "server-name": {
      "command": "npx",
      "args": ["-y", "package-name"],
      "description": "What it does"
    }
  }
}
```

### Copilot CLI
Add to `~/.copilot/mcp-config.json`:
```json
{
  "mcpServers": {
    "server-name": {
      "command": "npx",
      "args": ["-y", "package-name"]
    }
  }
}
```

---

## The Philosophy

Each MCP server you add gives Samantha another sense or capability. Memory lets her know you. Voice lets her speak to you. Desktop integration lets her live alongside you. The more you add, the more she feels like the AI companion OS from the movie *Her* — not trapped in a chat window, but woven into your life.

Start with memory. Add voice when you're ready. Everything else is bonus.
