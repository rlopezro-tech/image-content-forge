# Freshness Management Card Prompt

Use case: infographic-diagram

Asset type: premium LinkedIn technical education card, single vertical image.

Primary request: Create a premium, modern, clean engineering reference card about the AI engineering concept "Freshness Management". Use a soft light-gray editorial canvas with white content bands, thin cool-gray borders, soft layered shadows, a bright white header, a gradient blue/purple concept icon tile, a compact blue type badge, a smaller dark navy main title, overview copy that uses the full available text area, and larger readable body text. Use one electric blue accent plus restrained teal and amber functional accents. Make the central flow diagram the visual anchor with numbered nodes, crisp connectors, and varied 2D visual states. Use recognizable standard technical glyphs with consistent stroke weight.

Canvas: 1080 x 1350 px.

Visible copy:

- Header: `FRESHNESS MANAGEMENT` and `PRODUCTION CHECKS`.
- Overview: `Freshness management keeps retrieved knowledge up to date. It covers when content changes, when indexes are rebuilt, when caches expire, and how the system avoids answering from stale sources.`
- How it works: `Source change` -> `Detect update` -> `Re-embed / reindex` -> `Invalidate stale data` -> `Serve fresh context`.
- Implementation:
  - `Track document versions, timestamps, and delete events.`
  - `Rebuild indexes or refresh segments when sources change.`
  - `Use recency filters and cache expiry where freshness matters.`
- Tools / frameworks:
  - `Change feeds: webhooks, queues, CDC, scheduled syncs.`
  - `Stores: object storage, vector DBs, search indexes, caches.`
  - `Checks: versioning, TTLs, refresh jobs, monitoring dashboards.`

Constraints: Keep all text in English and inside safe margins. Keep the existing section structure and exact visible copy. Make the main title compact, around 44-48px for this canvas, while supporting copy is comfortably larger and more readable than the section labels. Let overview paragraph text use the full text area; justify it only when spacing remains natural. Use clear section boundaries without vertical accent bars on panel edges, an editorial hierarchy, spacious alignment, crisp 2D vector-like shapes, consistent icon stroke weight, and strong mobile readability. The header should have the clearest title contrast; the diagram should be the most informative region. Avoid heavy gradients, glassmorphism, neon glow, 3D icons, blobs, orbs, bokeh, circuit-board filler, abstract AI decoration, stock imagery, marketing slogans, and watermarks.
