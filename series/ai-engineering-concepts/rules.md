# AI Engineering Concept Card Rules

Use this rule set to generate practical LinkedIn cards for AI engineering concepts.

## Required Output

- Final image format: PNG.
- Default canvas: `1080 x 1350`.
- One image per LinkedIn publication.
- HTML/CSS is the source of truth for every card design.
- The PNG must be rendered from the HTML template, not generated as a flat image with text.
- Every publication must include a LinkedIn post in Markdown.
- Visible card text: English.
- Post copy: concise and ready to paste into LinkedIn.

## Card Goal

Each card should help engineers understand a concept well enough to reason about it in real systems.

Cover:

- What it is.
- Why it matters.
- How it works.
- When to use it.
- Common failure modes.
- Production checks.

## Design Direction

Use a vertical technical study-card format, visually aligned with the AWS service card series but not AWS-branded.

The visual quality bar for this series should be higher than the AWS service cards: more refined, cleaner, more modern, and more visually memorable while staying practical and readable. Treat every card as a small editorial product: it needs a clear focal point, deliberate rhythm, and a recognizable series signature.

The card should feel like a saved engineering note:

- Practical.
- Dense but readable.
- Visual first.
- Useful for technical interview study without saying "interview".
- Helpful to the broader engineering community as general knowledge.
- Modern.
- Clean.
- Eye-catching.
- Polished enough to feel like a premium technical reference.

Each section must be clearly defined and easy to scan. Use strong layout hierarchy, consistent spacing, subtle borders, restrained shadows, and clear section headers.

Avoid:

- AI hype.
- Marketing language.
- Long paragraphs.
- Meme-style layouts.
- Decorative images that do not explain the concept.
- Multi-image carousel logic.

## Canvas And Layout

Default canvas:

```text
1080 x 1350 px
```

Use one complete vertical card per post.

Recommended layout:

1. Compact header.
2. Overview.
3. How it works.
4. Implementation.
5. Tools / frameworks.

The card should use the full usable width of the canvas and remain readable on mobile LinkedIn previews.

## HTML Render Standard

Create one self-contained HTML template for every publication:

```text
templates/{concept-slug}-card.html
```

The HTML template is the editable master asset. The final PNG is only the rendered export:

```text
images/{concept-slug}.png
```

Template requirements:

- Use a fixed `.card` viewport of exactly `1080px x 1350px`.
- Include `<!doctype html>`, `lang="en"`, and a responsive viewport declaration.
- Keep all CSS in the template or inlined for deterministic rendering.
- Keep all visible copy as real HTML text so it remains exact, selectable, and easy to revise.
- Use CSS Grid and Flexbox for layout; do not position the full card with arbitrary absolute coordinates.
- Use inline SVG for neutral concept icons, arrows, diagrams, and small functional symbols.
- Do not use external web images, remote fonts, remote stylesheets, or network-dependent assets in the final template.
- Reference only local assets when an official product or framework logo is required.
- Use semantic sections for `header`, `overview`, `how it works`, `implementation`, and `tools frameworks`.
- Use reusable classes for panels, section labels, step nodes, bullets, badges, and icons.
- Keep the template readable and maintainable; do not minify it.

Rendering requirements:

- Render the HTML at exactly `1080 x 1350` CSS pixels.
- Capture only the `.card` element, without browser chrome, page margins, or transparent padding.
- Export a PNG at native dimensions; do not resize a generated raster export to force the target ratio.
- Inspect the rendered PNG after export for text wrapping, clipping, overflow, contrast, and mobile readability.
- If the layout changes, update the HTML template first and regenerate the PNG.

The final HTML and PNG must show the same content. Do not manually edit the PNG after rendering.

## LinkedIn Post Standard

Create one Markdown post for every publication:

```text
posts/{number}-{concept-slug}-linkedin-post.md
```

The post should complement the image instead of repeating every visible line.

Post requirements:

- Write the post in English.
- Start with a concise hook related to the concept.
- Explain the practical idea in 2-4 short paragraphs.
- Add 3-5 concise takeaways or implementation reminders when useful.
- Keep the tone educational, direct, and useful to the engineering community.
- Do not mention interviews, hiring, candidates, or exam preparation.
- Do not use exaggerated AI claims, engagement bait, or empty motivational language.
- Do not add unsupported technical claims that are absent from the source material.
- End with a focused question only when it creates a natural technical discussion.
- Use a small, relevant hashtag set: maximum 5 hashtags.
- Choose hashtags that match the specific topic, not a fixed generic set.
- Useful examples include `#AIAgent`, `#GenerativeAI`, `#SoftwareEngineering`, `#Python`, `#LLM`, `#MachineLearning`, `#TechStack`, `#Developers`, and `#Innovation`, but only use them when they fit the card.
- Prefer a mix of one series/domain tag plus topic-specific tags. For example, an embeddings post may use `#AIEngineering #Embeddings #RAG #MachineLearning #SoftwareEngineering`; an agents post may use `#AIAgent #LLM #GenerativeAI #SoftwareEngineering #Developers`.
- Keep source links and references outside the image, in the Markdown post when they add value.

## HTML Quality Checks

Before considering a card complete, verify:

- The PNG dimensions are exactly `1080 x 1350`.
- No text, icon, border, or panel is clipped at the card edges.
- No text overlaps another section or escapes its parent panel.
- The overview remains at or below 100 words.
- The overview copy should use the full available text area unless a narrower measure clearly improves readability. Use justified text only when word spacing remains natural; otherwise prefer left-aligned paragraph text.
- The central diagram contains 4-6 nodes and remains legible at feed size.
- Implementation and tools/frameworks contain no more than 3 bullets each.
- The header follows the shared series structure and remains visually consistent.
- All sections have clear boundaries and balanced vertical rhythm.
- The lowest section ends naturally; do not add a footer or empty spacer.
- The card remains readable when previewed at a reduced mobile scale.

## Visual System

The design must look modern, sharp, and calm. It should attract attention without feeling noisy.

Recommended visual treatment:

- Use a soft light editorial canvas with white or near-white content bands, subtle cool-gray borders, modest corner rounding, and soft layered shadows.
- Use a bright white header band as the series signature, with a gradient blue/purple concept icon tile, a compact blue type badge, and dark navy title text.
- When multiple cards are produced in the same batch, vary the header accent palette by concept or category so the series is easier to scan as a set. Keep the icon tile and type badge on the same accent family, and avoid repeating the same header gradient across adjacent cards.
- Keep the main title compact, generally around `44-48px` for short one-line titles on a `1080px` card, so the header breathes; supporting copy and checklist text should be larger and more readable than decorative labels.
- Give each section a distinct visual role: overview = editorial summary, how it works = diagram stage, implementation = action checklist, tools/frameworks = practical ecosystem checklist.
- Do not add vertical accent bars to panel edges; section color should come from headings, icons, badges, checks, borders, and diagram elements.
- Use a spacing scale and repeat it consistently: 12 / 16 / 24 / 32 px. Never solve visual imbalance with random offsets.
- Use one primary accent (electric blue) plus up to two functional accents (teal for flow or positive state, amber for caution or operational state). Accents should identify meaning, not decorate every surface.
- Build icons as crisp 2D inline SVGs with a consistent stroke, geometric construction, and one or two filled details. Prefer recognizable standard symbols (nodes, signal paths, shield, sliders, terminal, magnifier) over generic clip-art. When an official product/framework icon exists and is in scope, use its approved local asset; do not invent a fake “official” logo. For concepts without an official logo, use a neutral standard technical glyph.
- Make the central diagram the visual anchor: use numbered nodes, directional connectors, small labels, and varied visual states. The flow should read left to right without relying on paragraphs.
- Create interest through alignment, hierarchy, whitespace, and material contrast. Use restrained gradients only for icon tiles, type badges, and small functional accents; avoid heavy gradients and decorative effects.

Avoid visual clutter:

- No heavy gradients, glassmorphism, neon glow, or 3D rendering.
- No dark full-card backgrounds; reserve dark color for title text, labels, and small functional elements.
- No random decorative orbs, blobs, bokeh, circuit-board filler, or abstract AI decoration.
- No stock-style generated images.
- No crowded multi-column layouts that reduce mobile readability.
- No tiny labels that only work at full resolution.
- No section without a clear visual boundary.

### Visual hierarchy checks

Before export, verify that:

- The eye lands on the concept title first, then the central diagram, then the two supporting sections.
- The header has the clearest title contrast and the diagram is the most visually informative region.
- Every panel has one dominant element; labels, copy, icons, and decoration must not compete equally.
- Borders are quiet and shadows are soft; if the card looks like a worksheet or comic panel, reduce stroke weight and contrast.
- At 50% scale, the title, section labels, step names, supporting copy, checklist text, and flow direction remain obvious.
- The main title is compact enough to leave breathing room around the icon and badge; supporting copy should be visibly larger than section labels and decorative text.
- Overview paragraphs should fill the available text column naturally; do not force a specific line count. Use `text-align: justify` only when it does not create visibly uneven word spacing.

The final card should feel like a clean engineering artifact, not a slide deck, meme, infographic poster, or product ad.

## Header Standard

Header content:

```text
{CONCEPT_NAME}
{CARD_TYPE}
```

Recommended card type labels:

```text
Mental Model
Implementation
Tooling Map
Production Checks
Security Pattern
Eval Pattern
Framework Notes
```

Card type guidance:

- `Mental Model`: use for foundational concepts and reasoning models, such as embeddings, RAG, vector search, tool calling, agents, and context engineering.
- `Implementation`: use when the card focuses on how to build the concept in real systems: data shape, APIs, orchestration, storage, runtime flow, deployment, or integration decisions.
- `Tooling Map`: use when the card focuses on real tools, frameworks, databases, providers, or libraries and when to use each category.
- `Production Checks`: use when the card focuses on operational concerns such as quality, monitoring, latency, cost, drift, indexing consistency, failure modes, or reliability.
- `Eval Pattern`: use for evaluation workflows, datasets, graders, regression tests, scorecards, and retrieval/LLM quality measurement.
- `Security Pattern`: use for prompt injection, data leakage, guardrails, policy enforcement, authorization, abuse controls, or safety boundaries.
- `Framework Notes`: use for specific frameworks or SDKs such as LangChain, LlamaIndex, DeepEval, OpenAI SDKs, provider SDKs, or observability tools.

Do not default every card to `Mental Model`; choose the badge that best matches the card's main teaching angle.

Header rules:

- Use one compact header container at the top.
- Use a concept icon tile on the left.
- Use the main concept title next to the icon.
- Use a compact type badge on the right.
- Keep the title to one line when possible; two lines maximum.
- Prefer a slightly smaller title over an oversized header; the title should feel like a card label, not a poster headline.
- Do not put long explanations in the header.
- Do not include source URLs in the PNG.

## Content Pattern

Use this fixed visible section structure for every card:

```text
OVERVIEW
HOW IT WORKS
IMPLEMENTATION
TOOLS / FRAMEWORKS
```

Do not use "interview" language in the card. The content should read as general AI engineering knowledge while still helping readers build strong technical mental models.

Section rules:

- `OVERVIEW`: explain what the concept is and why it matters in no more than 100 words. Let the copy fill the available text area naturally; do not force a specific line count. Use justified text only when it preserves natural spacing.
- `HOW IT WORKS`: use the central diagram or flow; keep it to 4-6 nodes maximum.
- `IMPLEMENTATION`: use up to 3 bullets about concrete engineering decisions: model/version choice, data shape, IDs, metadata, indexing, retrieval path, filtering, reranking, evaluation, orchestration, or deployment pattern.
- `TOOLS / FRAMEWORKS`: use up to 3 bullets with real, commonly used tools grouped by category. Each bullet must start with the category before the examples, such as `Models/APIs:`, `Vector DBs:`, `Libraries:`, `Frameworks:`, `Evals:`, `Observability:`, or `Serving:`.
- Do not list tool names without explaining what kind of tool they are. For example, use `Vector DBs: Pinecone, Weaviate, pgvector` instead of only `Pinecone, Weaviate, pgvector`.

For security concepts, keep the same visible structure but adapt the content:

```text
OVERVIEW
HOW IT WORKS
IMPLEMENTATION
TOOLS / FRAMEWORKS
```

Security content guidance:

- `OVERVIEW`: state the risk or control clearly.
- `HOW IT WORKS`: show the threat path, control path, or validation flow.
- `IMPLEMENTATION`: name the practical controls, guardrails, policies, validators, or review steps.
- `TOOLS / FRAMEWORKS`: group real tools by function, such as validators, scanners, policy engines, tracing tools, gateways, or guardrail frameworks.

For framework or tool concepts, keep the same visible structure but adapt the content:

- `OVERVIEW`: explain what the tool does and where it fits.
- `HOW IT WORKS`: show its core primitives or runtime flow.
- `IMPLEMENTATION`: name the key APIs, modules, integrations, or setup pattern.
- `TOOLS / FRAMEWORKS`: group complementary tools by function, such as integrations, providers, stores, evaluators, deployment targets, or operational frameworks.

Keep visible copy short and specific. Prefer labels, arrows, matrices, and checklists over explanatory prose.

No section should exceed its limit. The diagram should explain more than the text.

## Topic Scope

This series can cover general AI engineering concepts and selected tools or frameworks when they teach a reusable engineering idea.

Good topic categories:

- RAG and retrieval systems.
- Embeddings, chunking, reranking, and vector search.
- Tool calling and structured outputs.
- Agents, planning loops, memory, and orchestration.
- Evals, regression testing, datasets, and graders.
- LLM observability, tracing, logging, and cost monitoring.
- Safety, security, guardrails, prompt injection, data leakage, and abuse controls.
- Frameworks such as DeepEval, LangChain, LlamaIndex, and provider SDKs when the post explains how to reason about the tool.

Keep product-specific posts grounded in the tool's official documentation. Do not turn the series into vendor announcements.

## Icon Rules

Use icons to explain concepts, not to decorate the card.

Default icon policy:

- Prefer neutral concept icons created as simple inline SVGs in the HTML template.
- Use official product or framework logos only when the card is specifically about that product or framework.
- Do not use unofficial logo packs, random SVG repositories, screenshots, social media images, or copied images from search results.
- Preserve official logos exactly: no stretching, recoloring, cropping, effects, or shape changes.
- Keep official logos secondary to the educational content. Do not imply endorsement, partnership, or certification.
- If no official logo source or usage guidance is available, use a neutral concept icon instead.

Recommended official icon sources:

- OpenAI: official brand/design guidelines and logo downloads.
- AWS: official AWS Architecture Icons.
- Pinecone: official newsroom/media kit.
- Frameworks with no formal media kit: official documentation site or official GitHub organization/repository only, after checking license and trademark notes.

For generic concepts such as RAG, embeddings, evals, context engineering, and guardrails, use custom neutral icons instead of vendor logos.

## Source Rules

Use primary or official sources whenever possible:

- OpenAI documentation for OpenAI-specific APIs, models, tools, agents, evals, and platform behavior.
- Cloud provider docs for provider-specific AI infrastructure.
- Original papers for research concepts.
- Official framework documentation for framework behavior.
- Official brand or media-kit pages for logos and product icons.

Do not use unverified social posts, SEO summaries, or generated claims as source of truth.

## Output Files

```text
prompts/{concept-slug}-prompt.md
templates/{concept-slug}-card.html
images/{concept-slug}.png
posts/{number}-{concept-slug}-linkedin-post.md
```
