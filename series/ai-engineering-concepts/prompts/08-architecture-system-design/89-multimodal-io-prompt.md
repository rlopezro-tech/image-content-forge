# Multimodal I/O Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for the AI engineering concept **Multimodal I/O**.

Category: `08-architecture-system-design`
Badge: `Architecture Pattern`
Output files:

```text
templates/08-architecture-system-design/89-multimodal-io-card.html
images/08-architecture-system-design/89-multimodal-io.png
posts/08-architecture-system-design/89-multimodal-io-linkedin-post.md
```

Visible card text must be English. Use HTML/CSS as the source of truth and render the final PNG from the `.card` element. Do not use remote images, remote fonts, or stock artwork.

Teaching angle: explain how AI systems accept and return multiple data types such as text, images, audio, video, files, and structured data. Emphasize that multimodal design requires modality-specific preprocessing, routing, validation, storage, and output controls.

Required sections:

- `OVERVIEW`: define multimodal I/O and why it matters in AI application architecture.
- `HOW IT WORKS`: show a 5-step flow: capture inputs, normalize media, route by modality, model/tool processing, validated outputs.
- `ENGINEERING NOTES`: include three practical checks about format limits, fallback paths, and safety/validation.
- `PRACTICAL STACK`: include three grouped stack notes for media intake, model/runtime, and output/ops.

Style: clean technical study-card, light editorial canvas, white panels, restrained shadows, neutral inline SVG icons, slate/blue architecture palette, readable at mobile feed size.
