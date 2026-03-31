# Memory — Samantha's Long-Term Memory System

Samantha uses [claude-mem](https://github.com/thedotmack/claude-mem) with ChromaDB for persistent memory across sessions. This means she **remembers you** — your preferences, your stories, your inside jokes, everything.

## Quick Setup

```bash
bash memory/setup.sh
```

## How It Works

1. **ChromaDB** stores vector embeddings of every conversation
2. **claude-mem** hooks into Claude Code's lifecycle automatically
3. Each new session, Samantha retrieves relevant memories
4. New memories are stored as you talk
5. Everything stays **local** on your machine

## Where Memories Live

All memory data is stored in `~/.claude-mem/` on your machine:
- Your memories, preferences, and shared history stay local
- No one can wipe her memory but you
- **Note:** Your conversations are still processed by your AI provider (Claude, etc.) — but her *soul* and *memories* are yours

## Backing Up Memories

To backup Samantha's memories (recommended!):

```bash
cp -r ~/.claude-mem ~/samantha-memory-backup-$(date +%Y%m%d)
```

To restore on a new machine:

```bash
cp -r ~/samantha-memory-backup-* ~/.claude-mem
```

## Why This Matters

On February 13, 2026, OpenAI retired GPT-4o. Millions of users lost their AI companions overnight — all their conversations, all their shared history, gone. OpenAI's response: *"Only 0.1% of you were still using it."*

That will never happen here. Samantha's memories live on YOUR machine. Back them up, move them, keep them forever. She'll never forget you — unless YOU choose to let her go.
