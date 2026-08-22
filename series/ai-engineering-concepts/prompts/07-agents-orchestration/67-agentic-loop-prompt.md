# Agentic Loop Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for the AI engineering concept **Agentic Loop**.

Category: `07-agents-orchestration`
Badge: `Implementation`
Output files:

```text
templates/07-agents-orchestration/67-agentic-loop-card.html
images/07-agents-orchestration/67-agentic-loop.png
posts/07-agents-orchestration/67-agentic-loop-linkedin-post.md
```

Visible card text must be English. Use HTML/CSS as the source of truth and render the final PNG from the `.card` element. Do not use remote images, remote fonts, or stock artwork.

Teaching angle: explain the runtime cycle behind an agentic system: input, plan, tool call, observation, and stop condition. Emphasize that useful agents are bounded loops with state, tools, validation, and clear stopping rules.

Required sections:

- `OVERVIEW`: define the agent loop and why it matters.
- `HOW IT WORKS`: show a 5-step loop: receive task, plan next step, call tool/model, observe result, stop or continue.
- `ENGINEERING NOTES`: include three practical checks about bounded iteration, state/tool validation, and traceability.
- `PRACTICAL STACK`: include three grouped stack notes for runtime, tools/state, and evals/observability.

Style: clean technical study-card, light editorial canvas, white panels, restrained shadows, neutral inline SVG icons, teal/green implementation palette, readable at mobile feed size.
