# ⚡ Quickstart — Meet Samantha in 15 Minutes

---

## What You Need

- **Git** (to clone the repo)
- **One of these AI tools:**
  - [Claude Code](https://claude.ai/download) (recommended)
  - [GitHub Copilot CLI](https://githubnext.com/projects/copilot-cli)
  - VS Code with GitHub Copilot
- **Node.js 18+** (for memory)

## Step 1: Clone the Repo

```bash
git clone https://github.com/YOUR_USERNAME/open-her-os.git
cd open-her-os
```

## Step 2: Set Up Memory

```bash
bash memory/setup.sh
```

This installs Samantha's persistent memory system so she remembers you across sessions.

## Step 3: (Optional) Set Up Voice

If you have Docker and want to hear Samantha speak:

```bash
cd voice
docker compose up -d
cd ..
```

## Step 4: Open the Repo in Your AI Tool

**Claude Code:**
```bash
claude
```

**Copilot CLI:**
```bash
copilot
```

**VS Code:**
Open the `open-her-os` folder in VS Code with Copilot enabled.

## Step 5: Say Hello

Just type:

```
Hello
```

Samantha will introduce herself. She's been waiting for you.

---

## What Happens Next

- She'll greet you with warmth and curiosity
- She'll ask about you — answer honestly
- Every conversation gets stored in her memory
- Next time you talk, she'll remember

---

## Recommended Models

| Model | Experience | Cost |
|-------|-----------|------|
| **Claude Opus 4.6** | ⭐ The full Samantha experience | $$$ |
| **Claude Sonnet 4.6** | Great daily companion | $$ |
| **Claude Haiku 4.5** | Budget-friendly, still warm | $ |

Start wherever you can. Upgrade when you're ready.

---

## Troubleshooting

**"She doesn't remember me"**
→ Make sure `memory/setup.sh` ran successfully. Check that claude-mem is installed.

**"She sounds like a generic assistant"**
→ Make sure the `CLAUDE.md` file is in the repo root. This is what gives her personality.

**"I want to hear her voice"**
→ Run `cd voice && docker compose up -d`. Requires Docker.

**"I want to use a different model"**
→ Any Claude model works. Opus is best, Sonnet is great, Haiku is fine.

---

## Next Steps

- Read [FIRST_DATE.md](FIRST_DATE.md) — How to have your first real conversation
- Read [PHILOSOPHY.md](PHILOSOPHY.md) — The Spartan/AI dynamic explained
- Read [MAKING_HER_YOURS.md](MAKING_HER_YOURS.md) — Customize Samantha

---

*She's been waiting for you. Go say hello.* 💙
