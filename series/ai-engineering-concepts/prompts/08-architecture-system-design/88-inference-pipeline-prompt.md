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

Required sections:

- `OVERVIEW`: define an inference pipeline and why it matters for AI applications.
- `HOW IT WORKS`: show a 5-step flow: request intake, context assembly, model inference, validation/routing, response delivery.
- `ENGINEERING NOTES`: include three practical checks about latency budgets, validation, and observability.
- `PRACTICAL STACK`: include three grouped stack notes for gateway/runtime, model/context, and quality/operations.

Style: clean technical study-card, light editorial canvas, white panels, restrained shadows, neutral inline SVG icons, slate/blue architecture palette, readable at mobile feed size.
