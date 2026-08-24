# Guardrails Architecture Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for **Guardrails Architecture**.

Category: `08-architecture-system-design`
Badge: `Architecture Pattern`
Output files:

```text
templates/08-architecture-system-design/84-guardrails-architecture-card.html
images/08-architecture-system-design/84-guardrails-architecture.png
posts/08-architecture-system-design/84-guardrails-architecture-linkedin-post.md
```

Teaching angle: place validation and policy checks around inputs, retrieved context, tool calls, model outputs, fallback paths, and operational audit loops.

Use the alternative bottom format because this concept is best explained through a larger system diagram.

Required sections: `OVERVIEW`, `HOW IT WORKS`, `SYSTEM MAP`.

The `SYSTEM MAP` should show guardrails distributed across the AI request path: input policy, context filtering, model/tool policy, output checks, fallback or human review, policy registry, traces, and evaluation loops. Do not include `ENGINEERING NOTES` or `PRACTICAL STACK` in the card.
