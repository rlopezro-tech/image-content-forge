# Ensemble and Router Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for the AI engineering concept **Ensemble and Router**.

Category: `08-architecture-system-design`
Badge: `Architecture Pattern`
Output files:

```text
templates/08-architecture-system-design/90-ensemble-and-router-card.html
images/08-architecture-system-design/90-ensemble-and-router.png
posts/08-architecture-system-design/90-ensemble-and-router-linkedin-post.md
```

Visible card text must be English. Use HTML/CSS as the source of truth and render the final PNG from the `.card` element. Do not use remote images, remote fonts, or stock artwork.

Teaching angle: explain how AI systems use routers and ensembles to choose or combine models based on task type, capability, cost, latency, risk, and confidence. Emphasize that routing and ensembling need explicit policies, observability, and evaluation.

Required sections:

- `OVERVIEW`: define ensemble and router architecture and why it matters.
- `HOW IT WORKS`: show a 5-step flow: classify request, route candidate, run model(s), aggregate/check, return/fallback.
- `ENGINEERING NOTES`: include three practical checks about routing policies, cost/latency budgets, and evals.
- `PRACTICAL STACK`: include three grouped stack notes for router, models, and quality/ops.

Style: clean technical study-card, light editorial canvas, white panels, restrained shadows, neutral inline SVG icons, slate/blue architecture palette, readable at mobile feed size.
