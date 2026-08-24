# Hybrid Search Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for the AI engineering concept **Hybrid Search**.

Use HTML/CSS as the source of truth and render the final PNG from the `.card` element. Do not use remote images, remote fonts, stock artwork, or generated raster text.

## Visible Card Copy

Header:

- `HYBRID SEARCH`
- `Implementation`

Overview:

`Hybrid search combines lexical matching with vector similarity so retrieval can find exact terms and semantic matches in the same request. It is useful when users mix IDs, product names, error codes, synonyms, and natural-language questions.`

How It Works:

- `User query`
- `Keyword branch`
- `Vector branch`
- `Fuse scores`
- `Rerank / trim`
- `Context for LLM`

Engineering Notes:

- `Use keyword search for rare terms, filters, IDs, and exact names.`
- `Use vector search for paraphrases, intent, and fuzzy language.`
- `Normalize scores before fusion so one branch does not dominate silently.`

Production Checks:

- `Measure recall before and after fusion.`
- `Log which branch found each source.`
- `Tune top-k, filters, and reranking together.`

## Design Direction

Make the central diagram the visual anchor. Show a query splitting into two parallel search branches, then merging into score fusion, reranking, and context assembly. Use a light editorial canvas, white content panels, thin cool-gray borders, restrained shadows, and an implementation palette based on teal/green with electric blue for section labels and amber for caution states.

Keep text readable at mobile feed size. Avoid dense paragraphs, heavy gradients, dark backgrounds, decorative blobs, bokeh, circuit patterns, and marketing language.
