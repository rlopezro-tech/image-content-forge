# Human-in-the-Loop Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for the AI engineering concept **Human-in-the-Loop**.

Category: `08-architecture-system-design`
Badge: `Architecture Pattern`
Output files:

```text
templates/08-architecture-system-design/83-human-in-the-loop-card.html
images/08-architecture-system-design/83-human-in-the-loop.png
posts/08-architecture-system-design/83-human-in-the-loop-linkedin-post.md
```

Visible card text must be English. Use HTML/CSS as the source of truth and render the final PNG from the `.card` element. Do not use remote images, remote fonts, or stock artwork.

Teaching angle: explain how to add human review, approval, escalation, and audit trails around risky AI actions. Emphasize that human review should be designed into the workflow, not bolted on after failures.

Use the alternative bottom format because this concept is best explained as a decision and escalation map.

Required sections:

- `OVERVIEW`: define human-in-the-loop architecture and why it matters.
- `HOW IT WORKS`: show a 5-step flow: AI draft, risk gate, human review, approved action, audit trail.
- `SYSTEM MAP`: show where human review sits in the runtime path, including risk policy, evidence package, reviewer queue, approved actions, fallback or escalation, audit log, and feedback into evaluation.

Do not include `ENGINEERING NOTES` or `PRACTICAL STACK` in the card.

Style: clean technical study-card, light editorial canvas, white panels, restrained shadows, neutral inline SVG icons, slate/blue architecture palette, readable at mobile feed size.
