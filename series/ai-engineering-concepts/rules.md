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

The visual quality bar for this series should be higher than the AWS service cards: more refined, cleaner, more modern, and more visually memorable while staying practical and readable.

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
5. Production notes.

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
- Use semantic sections for `header`, `overview`, `how it works`, `implementation`, and `production notes`.
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

- Write the post in Spanish unless a different language is explicitly requested.
- Start with a concise hook related to the concept.
- Explain the practical idea in 2-4 short paragraphs.
- Add 3-5 concise takeaways or implementation reminders when useful.
- Keep the tone educational, direct, and useful to the engineering community.
- Do not mention interviews, hiring, candidates, or exam preparation.
- Do not use exaggerated AI claims, engagement bait, or empty motivational language.
- Do not add unsupported technical claims that are absent from the source material.
- End with a focused question only when it creates a natural technical discussion.
- Use a small, relevant hashtag set: normally 3-5 hashtags.
- Keep source links and references outside the image, in the Markdown post when they add value.

## HTML Quality Checks

Before considering a card complete, verify:

- The PNG dimensions are exactly `1080 x 1350`.
- No text, icon, border, or panel is clipped at the card edges.
- No text overlaps another section or escapes its parent panel.
- The overview remains at or below 60 words.
- The central diagram contains 4-6 nodes and remains legible at feed size.
- Implementation and production notes contain no more than 3 bullets each.
- The header follows the shared series structure and remains visually consistent.
- All sections have clear boundaries and balanced vertical rhythm.
- The lowest section ends naturally; do not add a footer or empty spacer.
- The card remains readable when previewed at a reduced mobile scale.

## Visual System

The design must look modern, sharp, and calm. It should attract attention without feeling noisy.

Recommended visual treatment:

- Light background by default with subtle depth.
- Clean technical panels with clear boundaries.
- Distinct section blocks for `OVERVIEW`, `HOW IT WORKS`, `IMPLEMENTATION`, and `PRODUCTION NOTES`.
- Consistent spacing between sections.
- Clear title hierarchy: header title, section labels, body text.
- One strong accent color per card, supported by one or two secondary functional colors.
- Use accent colors to guide attention, not to decorate every element.
- Use diagrams, arrows, chips, and small technical labels instead of long prose.
- Keep corners, shadows, and borders consistent across all cards.
- Make the central diagram the visual anchor of the card.
- Keep text comfortably readable on mobile previews.

Avoid visual clutter:

- No heavy gradients.
- No dark full-card backgrounds by default.
- No random decorative orbs, blobs, bokeh, or abstract AI imagery.
- No stock-style generated images.
- No crowded multi-column layouts that reduce mobile readability.
- No tiny labels that only work at full resolution.
- No section without a clear visual boundary.

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
Production Notes
Security Pattern
Eval Pattern
Framework Notes
```

Header rules:

- Use one compact header container at the top.
- Use a concept icon tile on the left.
- Use the main concept title next to the icon.
- Use a compact type badge on the right.
- Keep the title to one line when possible; two lines maximum.
- Do not put long explanations in the header.
- Do not include source URLs in the PNG.

## Content Pattern

Use this fixed visible section structure for every card:

```text
OVERVIEW
HOW IT WORKS
IMPLEMENTATION
PRODUCTION NOTES
```

Do not use "interview" language in the card. The content should read as general AI engineering knowledge while still helping readers build strong technical mental models.

Section rules:

- `OVERVIEW`: explain what the concept is and why it matters in no more than 60 words.
- `HOW IT WORKS`: use the central diagram or flow; keep it to 4-6 nodes maximum.
- `IMPLEMENTATION`: use up to 3 bullets about APIs, components, frameworks, data stores, orchestration, or patterns used to build it.
- `PRODUCTION NOTES`: use up to 3 bullets about monitoring, validation, security, quality, cost, latency, failure modes, or operational checks.

For security concepts, keep the same visible structure but adapt the content:

```text
OVERVIEW
HOW IT WORKS
IMPLEMENTATION
PRODUCTION NOTES
```

Security content guidance:

- `OVERVIEW`: state the risk or control clearly.
- `HOW IT WORKS`: show the threat path, control path, or validation flow.
- `IMPLEMENTATION`: name the practical controls, guardrails, policies, validators, or review steps.
- `PRODUCTION NOTES`: include abuse monitoring, data leakage checks, policy drift, false positives, or fallback behavior.

For framework or tool concepts, keep the same visible structure but adapt the content:

- `OVERVIEW`: explain what the tool does and where it fits.
- `HOW IT WORKS`: show its core primitives or runtime flow.
- `IMPLEMENTATION`: name the key APIs, modules, integrations, or setup pattern.
- `PRODUCTION NOTES`: cover tradeoffs, operational checks, versioning, reliability, and lock-in risks.

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
