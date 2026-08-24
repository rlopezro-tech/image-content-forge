# Inference Pipeline Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for the AI engineering concept **Inference Pipeline**.

Category: `08-architecture-system-design`
Badge: `Architecture Pattern`
Output files:

```text
templates/08-architecture-system-design/88-inference-pipeline-card.html
images/08-architecture-system-design/88-inference-pipeline.png
posts/08-architecture-system-design/88-inference-pipeline-linkedin-post.md
```

Visible card text must be English. Use HTML/CSS as the source of truth and render the final PNG from the `.card` element. Do not use remote images, remote fonts, or stock artwork.

Teaching angle: explain the architecture path from request intake to validated response. Emphasize that inference is usually a pipeline around the model, not only one model call.

Use the alternative bottom format because this concept is best explained as a runtime path with control and observability loops.

Required sections:

- `OVERVIEW`: define an inference pipeline and why it matters for AI applications.
- `HOW IT WORKS`: show a 5-step flow: request intake, context assembly, model inference, validation/routing, response delivery.
- `SYSTEM MAP`: show the runtime path from API gateway to context assembly, model router/inference, output validation, fallback routing, response delivery, tracing, metrics, eval feedback, latency budgets, and cost controls.

Do not include `ENGINEERING NOTES` or `PRACTICAL STACK` in the card.

Style: clean technical study-card, light editorial canvas, white panels, restrained shadows, neutral inline SVG icons, slate/blue architecture palette, readable at mobile feed size.
