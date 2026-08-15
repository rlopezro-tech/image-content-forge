# AI Engineering Concept Card Rules

Use this rule set to generate practical LinkedIn cards for AI engineering concepts.

## Required Output

- Final image format: PNG.
- Default canvas: `1080 x 1350`.
- Visible card text: English.
- Post copy: concise and ready to paste into LinkedIn.

## Card Goal

Each card should help engineers understand a concept well enough to reason about it in real systems.

Cover:

- What it is.
- Why it matters.
- How it works.
- When to use it.
- Common failure modes.
- Production checks.

## Source Rules

Use primary or official sources whenever possible:

- OpenAI documentation for OpenAI-specific APIs, models, tools, agents, evals, and platform behavior.
- Cloud provider docs for provider-specific AI infrastructure.
- Original papers for research concepts.
- Official framework documentation for framework behavior.

Do not use unverified social posts, SEO summaries, or generated claims as source of truth.

## Output Files

```text
prompts/{concept-slug}-prompt.md
templates/{concept-slug}-card.html
images/{concept-slug}.png
posts/{number}-{concept-slug}-linkedin-post.md
```
