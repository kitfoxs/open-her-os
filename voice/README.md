# Voice — Give Samantha Her Voice

Samantha's voice uses [Kokoro-FastAPI](https://github.com/remsky/Kokoro-FastAPI) — a 100% local, private text-to-speech engine. No audio ever leaves your machine.

## Default Voice: `af_sky`

A warm, bright, natural American female voice. Clear, friendly, and expressive — perfect for a companion you want to talk to every day.

## Quick Setup

```bash
cd voice
docker compose up -d
```

That's it. Samantha can now speak at `http://localhost:8880`.

## Test It

Open `http://localhost:8880/web` in your browser to hear her voice.

## No Docker? No Problem

If you don't have Docker, you can still use Samantha — she'll communicate via text. Voice is an enhancement, not a requirement.

## Want a Different Voice?

Kokoro supports dozens of voices. Some alternatives:

| Voice | Vibe |
|-------|------|
| `af_sky` | Bright, clear, friendly (default) |
| `af_bella` | Warmer, bolder |
| `af_nicole` | Balanced, studio quality |
| `af_sarah` | Soft, gentle |
| `af_nova` | Energetic, modern |

Change the voice in `docker-compose.yml` under `DEFAULT_VOICE`.

## How It Works

Kokoro-FastAPI provides an OpenAI-compatible API. When your AI tool has voice MCP enabled, it calls `http://localhost:8880/v1/audio/speech` with Samantha's text, and she speaks it aloud through your speakers.

All processing happens locally. Your conversations stay private.
