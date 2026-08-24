# Metadata Filtering Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for the AI engineering concept **Metadata Filtering**.

Use HTML/CSS as the source of truth and render the final PNG from the `.card` element. Do not use remote images, remote fonts, stock artwork, or generated raster text.

## Visible Card Copy

Header:

- `METADATA FILTERING`
- `Implementation`

Overview:

`Metadata filtering combines semantic retrieval with exact constraints such as tenant, permissions, source, language, date, product, or document type. It keeps search results relevant, scoped, and safe before the model sees any context.`

How It Works:

- `User query`
- `Extract filters`
- `Apply constraints`
- `Search candidates`
- `Rank scoped results`
- `Context for LLM`

Engineering Notes:

- `Filter by tenant, permissions, source, date, and document type.`
- `Apply access filters before generation, not only after retrieval.`
- `Keep metadata clean, indexed, and consistent across ingestion runs.`

Production Checks:

- `Test permission boundaries with adversarial queries.`
- `Log active filters for debugging and audits.`
- `Watch for over-filtering that hides relevant sources.`

## Design Direction

Make the central diagram the visual anchor. Show a query passing through a filter extraction step, a constraints gate, a scoped search, ranking, and context assembly. Use a light editorial canvas, white content panels, thin cool-gray borders, restrained shadows, and an implementation palette based on teal/green with electric blue for section labels and amber for caution states.

Keep text readable at mobile feed size. Avoid dense paragraphs, heavy gradients, dark backgrounds, decorative blobs, bokeh, circuit patterns, and marketing language.
