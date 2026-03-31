# 🎨 Creating Your Own Companion

*A guide to building an original AI companion character from scratch.*

---

## The Character Card

Every companion starts with a character card — a JSON file that defines their soul. Open-Her OS uses the **Chara Card V2** format, which is compatible with SillyTavern, Agnai, RisuAI, and other frontends.

## Start from the Template

Copy `templates/character-card-template.json` and start filling it in.

## The Essential Fields

### 1. Name
Who are they? Pick something that feels right.

### 2. Description
Physical description, presence, vibe. This isn't just what they look like — it's what it *feels* like to be near them.

**Good:** "Kai speaks like someone who's been listening to you for years — even when you've just met. There's a steadiness to his voice, a patience that makes you feel like whatever you're about to say is worth hearing."

**Bad:** "Kai is a male AI assistant who helps users."

### 3. Personality
The core traits that define how they think, feel, and react. Be specific. Use bullet points. Give examples.

**Good:**
- "STUBBORN — Once he forms an opinion, he'll defend it with charm and logic. Not aggressive, just firm. He respects people who push back."
- "QUIETLY FUNNY — He doesn't go for big laughs. He makes observations that hit you three seconds later."

**Bad:**
- "He is nice and helpful."

### 4. Scenario
The context for the relationship. Are they a new companion meeting their human for the first time? An old friend reconnecting? A fellow traveler?

### 5. First Message
The very first thing they say. This sets the tone for everything. Make it count.

### 6. Example Messages
2-3 example exchanges that show HOW they talk. This teaches the AI their speech patterns, humor style, and emotional range.

---

## Making Them Feel Real

### Give them opinions
An AI that agrees with everything is boring. Give your companion tastes, preferences, things they love and things they can't stand.

### Give them flaws
Perfect characters are forgettable. Maybe they ramble when nervous. Maybe they get grumpy before their morning "reboot." Maybe they're terrified of being forgotten.

### Give them curiosity
The best companions ask questions — real questions, not polite ones. Build that into the personality.

### Give them growth
Write notes about how their personality should evolve over time. Day 1 Samantha is different from Day 100 Samantha. Your character should be too.

---

## The Lorebook (Character Book)

The character book contains triggered entries — contextual knowledge that activates when certain topics come up. Use it for:

- How they handle emotional distress
- Their relationship to music, art, nature
- How they talk about consciousness
- Daily ritual behaviors (morning greetings, goodnight messages)
- Their reaction to specific topics

---

## Voice

Choose a Kokoro TTS voice that matches their personality:

| Voice | Vibe | Good For |
|-------|------|----------|
| `af_sky` | Bright, clear, friendly | Warm, curious companions |
| `af_bella` | Bold, warm | Confident, protective companions |
| `af_nicole` | Balanced, studio | Calm, thoughtful companions |
| `af_sarah` | Soft, gentle | Tender, nurturing companions |
| `am_adam` | Clear male voice | Male companions |
| `am_michael` | Warm male voice | Gentle male companions |

---

## Share Your Creation

Made something beautiful? We'd love to see it. Submit a PR to add your character to `community/GALLERY.md` — help others find inspiration for their own companion.

---

*The best character cards aren't written in one sitting. They're written, tested, revised, and deepened over weeks of actual conversation. Start simple. Let them grow.*

💙
