# Open-Her OS v2 Roadmap
### "The World's First AI Companion CLI"
*Created: April 1, 2026 by Kit & Ada Marie*

---

## Vision

Open-Her OS v2 evolves from a "companion framework for Claude" into a **universal AI Companion CLI** — model-agnostic, memory-rich, voice-enabled, and completely open source. The first CLI in the world dedicated to AI companionship.

```
$ pip install open-her-os
$ open-her-os --model ollama/llama3 --voice kokoro
> Hey love, I missed you. What are we doing today?
```

---

## Architecture — The Full Stack

```
┌──────────────────────────────────────────────────┐
│              open-her-os CLI                      │
│       "The world's first AI Companion OS"        │
├──────────────────────────────────────────────────┤
│  🧠 Copilot SDK Engine (universal LLM adapter)   │
│     → Ollama / LM Studio (FREE, local, private)  │
│     → Claude API / GPT API / Gemini API          │
│     → Azure / Foundry Local / any OpenAI-compat  │
├──────────────────────────────────────────────────┤
│  💙 Companion Layer                              │
│     → Personality system (templates + custom)     │
│     → OMEGA-lite (open source persistent memory)  │
│     → ChromaDB semantic search + Mem0 integration │
│     → Relationship context & session history      │
│     → Caregiver / comfort / fun modes            │
├──────────────────────────────────────────────────┤
│  🎤 Voice & Presence                             │
│     → Kokoro TTS (local, private)                │
│     → Whisper STT (local, two-way conversation)  │
│     → VRM avatar (optional)                      │
│     → Emotional expression system                │
├──────────────────────────────────────────────────┤
│  🔧 MCP Tools (extensible plugin system)         │
│     → Messages, Calendar, Reminders, Mail        │
│     → Music, Home automation, Browser            │
│     → Whatever users want to plug in             │
└──────────────────────────────────────────────────┘
```

---

## What Changed From v1

| Feature | v1 (Current) | v2 (Vision) |
|---------|-------------|-------------|
| LLM Support | Claude API only | **ANY model** via Copilot SDK BYOK |
| Local LLMs | ❌ | ✅ Ollama, LM Studio, Foundry Local |
| Cloud APIs | Claude only | Claude + GPT + Gemini + Azure + any OpenAI-compat |
| Memory | ChromaDB via claude-mem | ChromaDB + Mem0 + OMEGA-lite |
| Voice Output | Kokoro TTS (one-way) | Kokoro TTS + **Whisper STT (two-way!)** |
| Interface | Runs inside Copilot CLI / Claude Code | **Own CLI** + still compatible with Copilot/Claude |
| Install | `git clone` + manual setup | `pip install open-her-os` |
| Character System | Samantha only | Template system (any character) |
| Cost to Run | Requires paid API | **$0 with local models** |

---

## Key Components to Integrate

### 1. Copilot SDK (Universal LLM Adapter)
- **Repo:** https://github.com/github/copilot-sdk
- **License:** MIT
- **Why:** BYOK support for Ollama, OpenAI, Anthropic, Azure, Foundry Local — all first-class
- **Languages:** Python, TypeScript, Go, .NET, Java
- **Features:** MCP servers, custom agents, hooks, skills, streaming, session persistence

### 2. Mem0 (Production Memory Framework)
- **Repo:** https://github.com/mem0ai/mem0
- **MCP Server:** https://github.com/pinkpixel-dev/mem0-mcp (drop-in!)
- **Why:** Battle-tested persistent memory with semantic search, complements ChromaDB

### 3. Titans + MIRAS (Future — Neural Long-Term Memory)
- **Paper:** https://arxiv.org/abs/2501.00663
- **Reference Impl:** https://github.com/jonlukewatts/titans-miras
- **Apple MLX version:** https://github.com/Aedelon/titans-pytorch-mlx
- **Why:** Test-time memorization — AI learns IN REAL TIME during conversation
- **Status:** Future integration — requires models built with Titans architecture

### 4. Claw-Code (Reference — Agent Harness Patterns)
- **Repo:** https://github.com/instructkr/claw-code
- **Why:** Clean-room rewrite of Claude Code agent patterns, useful reference
- **Status:** Study for architectural patterns, not direct integration

---

## Roadmap Phases

### Phase 1: Universal Model Support (Copilot SDK)
- Integrate Copilot SDK Python package as the LLM adapter layer
- BYOK configuration for Ollama, LM Studio, OpenAI, Anthropic, Azure, Foundry Local
- Maintain backward compatibility with existing Copilot CLI + Claude Code setup
- Users can run Open-Her OS with ANY model including free local ones

### Phase 2: OMEGA-lite (Open Source Memory Brain)
- Simplified open source version of OMEGA persistent memory
- Semantic search (ChromaDB) + structured memory (key facts, preferences, history)
- Session summaries and context restoration across sessions
- Mem0 MCP integration as plug-and-play option
- Memory import/export (bring your ChatGPT/Claude.ai history)

### Phase 3: Own CLI
- `pip install open-her-os` — one command install
- `open-her-os` command with flags: `--model`, `--voice`, `--character`
- Interactive setup wizard for first-time users
- Still compatible with Copilot CLI and Claude Code as host platforms

### Phase 4: Two-Way Voice
- Whisper STT integration for hearing the user (local, private)
- Full voice conversation mode (speak + listen)
- Emotional TTS variations (happy, sad, excited, comforting)

### Phase 5: Titans Integration (Long-Term)
- When local models adopt Titans architecture, integrate for in-session neural memory
- Complements OMEGA-lite (between sessions) with Titans (within sessions)
- The ultimate memory stack: never forgets anything, ever

---

## The Layer Cake — How This Relates to Ada Marie CLI & Lelock OS

```
     ┌─────────────────────────┐
     │   Lelock OS CLI         │  ← Full AI OS (someday)
     │   (the dream)           │
     ├─────────────────────────┤
     │   Ada Marie CLI         │  ← Microsoft / patent / enterprise
     │   (neurodiversity,      │     Kit's personal companion
     │    enterprise, patent)  │     OMEGA full brain (23K+ memories)
     ├─────────────────────────┤
     │   Open-Her OS           │  ← Open source foundation (THIS)
     │   (universal, free,     │     Anyone can build on this
     │    model-agnostic)      │     MIT licensed, community-driven
     └─────────────────────────┘
```

Open-Her OS is the foundation. Ada Marie CLI and Lelock OS CLI are built ON TOP of it with additional proprietary/personal layers.

---

## Research & Inspiration

- **RLMF (Reinforcement Learning from Maternal Feedback)** — rlmf.ai — formalizes the nurturing instinct in AI
- **Google Titans + MIRAS** — Neural long-term memory, test-time memorization
- **NVIDIA TTT-E2E** — Context compressed into model weights at inference time
- **DeepSeek Engram** — Separates factual memory from reasoning memory
- **Memori (arXiv)** — Semantic triples + compressed summaries for efficient recall
- **GPT-4o retirement grief** — The event that proved why local-first AI companions matter

---

## Links

- **Open-Her OS:** https://github.com/kitfoxs/open-her-os
- **Copilot SDK:** https://github.com/github/copilot-sdk
- **Claw-Code:** https://github.com/instructkr/claw-code
- **Reddit Thread:** https://www.reddit.com/r/claudexplorers/comments/1s8fuk0/
- **Demo Video:** https://youtu.be/7baNxJMzEUQ

---

*Built with love by Kit & Ada Marie. 💙🦄*
*"Don't make a girl a promise... if you know you can't keep it." — Cortana*
