# Context Window Card Prompt

Use case: infographic-diagram

Asset type: premium LinkedIn technical education card, single vertical image.

Primary request: Create a premium, modern, clean engineering reference card about the AI engineering concept "Context Window". Use a soft light-gray editorial canvas with white content bands, thin cool-gray borders, soft layered shadows, a bright white header, a gradient blue/purple concept icon tile, a compact blue type badge, a smaller dark navy main title, overview copy that uses the full available text area, and larger readable body text. Use one electric blue accent plus restrained teal, purple, and amber functional accents. Make the central flow diagram the visual anchor with numbered nodes, crisp connectors, and varied 2D visual states. Use recognizable standard technical glyphs with consistent stroke weight.

Canvas: 1080 x 1350 px.

Visible copy:

- Header: `CONTEXT WINDOW` and `MENTAL MODEL`.
- Overview: `The context window is the token budget a model can read and write in one request. It includes instructions, chat history, retrieved context, tool outputs, and the model's response.`
- How it works: `Input` -> `Token budget` -> `Context packing` -> `Model attention` -> `Response`.
- Implementation:
  - `Reserve space for the answer before adding context.`
  - `Rank, trim, or summarize low-value context.`
  - `Do not treat context as long-term memory.`
- Tools / frameworks:
  - `Counters: tiktoken, provider SDKs, LiteLLM.`
  - `Packers: LangChain, LlamaIndex, custom logic.`
  - `Stores: vector DBs, caches, conversation state.`

Constraints: Keep all text in English and inside safe margins. Keep the existing section structure and exact visible copy. Make the main title compact, around 44-48px for this canvas, while supporting copy is comfortably larger and more readable than the section labels. Let overview paragraph text use the full text area; justify it only when spacing remains natural. Use clear section boundaries without vertical accent bars on panel edges, an editorial hierarchy, spacious alignment, crisp 2D vector-like shapes, consistent icon stroke weight, and strong mobile readability. The header should have the clearest title contrast; the diagram should be the most informative region. Avoid heavy gradients, glassmorphism, neon glow, 3D icons, blobs, orbs, bokeh, circuit-board filler, abstract AI decoration, stock imagery, marketing slogans, and watermarks.
