# Grounding And Citations Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for the AI engineering concept **Grounding And Citations**.

Use HTML/CSS as the source of truth and render the final PNG from the `.card` element. Do not use remote images, remote fonts, stock artwork, or generated raster text.

## Layout Choice

Use the alternative bottom format from the series rules:

- Header
- Overview
- How It Works
- System Map

Do not include Engineering Notes or Practical Stack. This concept is best explained as a traceability map from generated claims back to retrieved source chunks.

## Visible Card Copy

Header:

- `GROUNDING AND CITATIONS`
- `Production Checks`

Overview:

`Grounding connects model answers to retrieved evidence. Citations expose that connection to users and reviewers. In RAG systems, the goal is not just to attach links, but to make every important claim traceable to source chunks the model actually received.`

How It Works:

- `Retrieve evidence`
- `Build context`
- `Generate answer`
- `Attach citations`
- `Verify support`
- `Return answer`

System Map:

- `User question`
- `Retrieved chunks`
- `Context window`
- `Generated claims`
- `Citation links`
- `Source documents`

Quality checks:

- `Claim supported`
- `Source visible`
- `Chunk used`
- `Stale evidence blocked`

## Design Direction

Make the System Map the visual anchor. Show a RAG answer with individual claims connected to retrieved chunks and source documents. Use a light editorial canvas, white content panels, thin cool-gray borders, restrained shadows, and a Production Checks palette based on amber/orange with electric blue section labels and teal for verified states.

Keep text readable at mobile feed size. Avoid dense paragraphs, heavy gradients, dark backgrounds, decorative blobs, bokeh, circuit patterns, and marketing language.
