# Reranking Card Prompt

Use case: infographic-diagram

Asset type: premium LinkedIn technical education card, single vertical image.

Primary request: Create a premium, modern, clean engineering reference card about the AI engineering concept "Reranking". Use a soft light-gray editorial canvas with white content bands, thin cool-gray borders, soft layered shadows, a bright white header, a gradient blue/purple concept icon tile, a compact blue type badge, a smaller dark navy main title, overview copy that uses the full available text area, and larger readable body text. Use one electric blue accent plus restrained teal and amber functional accents. Make the central flow diagram the visual anchor with numbered nodes, crisp connectors, and varied 2D visual states. Use recognizable standard technical glyphs with consistent stroke weight.

Canvas: 1080 x 1350 px.

Visible copy:

- Header: `RERANKING` and `IMPLEMENTATION`.
- Overview: `Reranking scores retrieved candidates again with a stronger model or scoring layer after the first search step. The goal is higher precision at the top of the list before the model generates the final answer.`
- How it works: `Query` -> `Initial retrieve` -> `Rerank candidates` -> `Keep top set` -> `Generate answer`.
- Implementation:
  - `Use reranking when first-pass retrieval is broad or noisy.`
  - `Score semantic relevance before generation, not after.`
  - `Keep the final candidate list small and high quality.`
- Tools / frameworks:
  - `Rerankers: Cohere Rerank, bge-reranker, cross-encoders.`
  - `Retrievers: LangChain, LlamaIndex, custom pipelines.`
  - `Search stack: vector DBs, hybrid search, provider APIs.`

Constraints: Keep all text in English and inside safe margins. Keep the existing section structure and exact visible copy. Make the main title compact, around 44-48px for this canvas, while supporting copy is comfortably larger and more readable than the section labels. Let overview paragraph text use the full text area; justify it only when spacing remains natural. Use clear section boundaries without vertical accent bars on panel edges, an editorial hierarchy, spacious alignment, crisp 2D vector-like shapes, consistent icon stroke weight, and strong mobile readability. The header should have the clearest title contrast; the diagram should be the most informative region. Avoid heavy gradients, glassmorphism, neon glow, 3D icons, blobs, orbs, bokeh, circuit-board filler, abstract AI decoration, stock imagery, marketing slogans, and watermarks.
