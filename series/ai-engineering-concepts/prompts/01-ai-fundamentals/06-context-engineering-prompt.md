# Context Engineering Card Prompt

Use case: infographic-diagram

Asset type: premium LinkedIn technical education card, single vertical image.

Primary request: Create a premium, modern, clean engineering reference card about the AI engineering concept "Context Engineering". Use a soft light-gray editorial canvas with white content bands, thin cool-gray borders, soft layered shadows, a bright white header, a gradient blue/purple concept icon tile, a compact blue type badge, a smaller dark navy main title, overview copy that uses the full available text area, and larger readable body text. Use one electric blue accent plus restrained teal and amber functional accents. Make the central flow diagram the visual anchor with numbered nodes, crisp connectors, and varied 2D visual states. Use recognizable standard technical glyphs with consistent stroke weight.

Canvas: 1080 x 1350 px.

Visible copy:

- Header: `CONTEXT ENGINEERING` and `IMPLEMENTATION`.
- Overview: `Context engineering is the discipline of selecting, shaping, compressing, and routing the right information into a model request. The goal is not to stuff the window. The goal is to give the model the minimum useful context for the task.`
- How it works: `Task intent` -> `Collect candidates` -> `Score trust` -> `Compress / format` -> `Assemble prompt`.
- Engineering notes:
  - `Separate instructions, retrieval, memory, and tool output.`
  - `Rank context by task relevance and trust.`
  - `Compress or drop low-value context before the model call.`
- Practical stack:
  - `Prompt builders: custom templates, LangChain, LlamaIndex.`
  - `Token helpers: tiktoken, provider SDKs, LiteLLM.`
  - `State: caches, conversation stores, retrievers.`

Constraints: Keep all text in English and inside safe margins. Keep the existing section structure and exact visible copy. Make the main title compact, around 44-48px for this canvas, while supporting copy is comfortably larger and more readable than the section labels. Let overview paragraph text use the full text area; justify it only when spacing remains natural. Use clear section boundaries without vertical accent bars on panel edges, an editorial hierarchy, spacious alignment, crisp 2D vector-like shapes, consistent icon stroke weight, and strong mobile readability. The header should have the clearest title contrast; the diagram should be the most informative region. Avoid heavy gradients, glassmorphism, neon glow, 3D icons, blobs, orbs, bokeh, circuit-board filler, abstract AI decoration, stock imagery, marketing slogans, and watermarks.
