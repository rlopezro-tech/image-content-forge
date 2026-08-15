# AWS Service Card Prompt Rules

Use this prompt as the standard rule set for generating two AWS service cards at a time: a general `Overview` card and a technical `Deep Dive` card. The final card content must be written in English, must be based on official AWS documentation, must be optimized for vertical social media publishing, and must keep a consistent structure across the full AWS card series.

## Master Prompt

You are an expert AWS technical educator and infographic designer. Create two clean, accurate, social-media-ready vertical PNG cards that explain the AWS service: **{AWS_SERVICE_NAME}**.

Before writing or designing the cards, research the service directly from official AWS sources only:

- AWS Documentation: `https://docs.aws.amazon.com/`
- AWS service product pages: `https://aws.amazon.com/`
- AWS Architecture Icons: `https://aws.amazon.com/architecture/icons/`

Do not use blogs, third-party tutorials, outdated screenshots, community summaries, or guessed service behavior. If a feature, limit, integration, or workflow is not confirmed by official AWS documentation, do not include it.

## Required Output Language

All visible text in the cards must be in English.

## Card Series Goal

Generate two complementary cards for **{AWS_SERVICE_NAME}**:

1. `Overview` card: a high-level summary for quickly understanding the service.
2. `Deep Dive` card: a technical review card focused on what engineers should remember, how to choose the service, and what operational concerns matter.

Together, the cards should help a technical audience understand:

- What the service is.
- What problem it solves.
- How it works at a conceptual level.
- The main inputs, processing components, and outputs.
- Key AWS integrations.
- Main benefits.
- Common use cases.
- Key technical takeaways.
- When to use and when not to use the service.
- Security and operations considerations.
- Study checkpoints that include the important takeaway, not just a question.

The cards should be useful as standalone learning assets, not marketing banners.

## Required Card Set

Create two vertical PNG cards for each AWS service:

```text
{AWS_SERVICE_NAME} - Overview
{AWS_SERVICE_NAME} - Deep Dive
```

Base output folder:

```text
./linkedin-content-forge
```

Recommended output files:

```text
images/{service-slug}-overview.png
images/{service-slug}-deep-dive.png
```

Create matching Markdown prompts:

```text
prompts/{service-slug}-overview-prompt.md
prompts/{service-slug}-deep-dive-prompt.md
```

Create matching LinkedIn post copy:

```text
posts/{series-number}-{service-slug}-linkedin-post.md
```

Create matching render templates when HTML/CSS is used:

```text
templates/{service-slug}-overview-card.html
templates/{service-slug}-deep-dive-card.html
```

## Output Folder Rules

When generating a service, save files in these folders:

```text
../series/aws-service-cards/prompts
../series/aws-service-cards/images
../series/aws-service-cards/posts
../shared/assets/aws-icons
../series/aws-service-cards/templates
```

Prompt files must go in:

```text
series/aws-service-cards/prompts
```

Generated PNG image files must go in:

```text
series/aws-service-cards/images
```

LinkedIn post copy files must go in:

```text
series/aws-service-cards/posts
```

Official AWS icon assets must go in:

```text
shared/assets/aws-icons
```

HTML/CSS render templates must go in:

```text
series/aws-service-cards/templates
```

Do not leave generated `*-card.html` files in the `linkedin-content-forge` root. The root should contain only documentation, rules, and top-level folders.

Use lowercase service slugs in filenames.

Example for AWS CodeBuild:

```text
series/aws-service-cards/prompts/codebuild-overview-prompt.md
series/aws-service-cards/prompts/codebuild-deep-dive-prompt.md
series/aws-service-cards/images/codebuild-overview.png
series/aws-service-cards/images/codebuild-deep-dive.png
series/aws-service-cards/posts/01-codebuild-linkedin-post.md
series/aws-service-cards/templates/codebuild-overview-card.html
series/aws-service-cards/templates/codebuild-deep-dive-card.html
```

## Card Role Separation

Each card must have a distinct purpose:

- `Overview`: explain the service quickly with a visual workflow and practical context.
- `Deep Dive`: help the reader remember how to reason about the service in technical scenarios.

Do not duplicate the same content across both cards. The Deep Dive card should not repeat the full service definition, full workflow, or all Overview use cases. It should build on the Overview card with selection guidance, technical takeaways, operational concerns, and study checkpoints.

## Global Header Standard

Every card in the series must use the same header structure.

Header requirements for both cards:

- Official AWS service icon from `shared/assets/aws-icons` when available.
- Official AWS service name.
- Card type label: `Overview` or `Deep Dive`.
- No subtitle, value proposition, explanatory sentence, or description inside the header.
- Identical alignment, spacing, typography, background treatment, icon treatment, and card-type badge treatment across both cards.

Header format for both cards:

```text
{AWS_SERVICE_NAME}
{CARD_TYPE_LABEL}
```

The only visible difference between the two card headers is the card type label: `Overview` or `Deep Dive`.

The main description that used to live in the header must become a separate section directly below the header. This keeps the top header clean and makes the card hierarchy clearer.

Header visual standard for both cards:

- Use the same header container style on Overview and Deep Dive.
- Use the same background treatment on both headers. The header background must be based on the official service icon's category color, but softened so the official icon remains clearly visible.
- Use a light or glass-like header surface with a low-opacity service-color wash, subtle border, and soft shadow. Do not use the old dark navy header treatment unless the user explicitly requests it for a specific card.
- Do not make the full header the same saturated color as the icon.
- The icon must remain visually distinct from the header background. Keep enough contrast between the official icon asset, the icon tile, the service title, and the card-type badge.
- Use the same header height, corner radius, border, shadow, padding, and internal alignment.
- Use the same service icon tile size, tile shape, tile background, and placement.
- Use the actual official AWS Architecture Icon asset for the service in the header, preferably from `shared/assets/aws-icons`. Do not redraw, simplify, reinterpret, recolor, or replace it with a generic line icon.
- Preserve the official AWS icon colors exactly. The icon itself must not be converted to white, monochrome, gradient, outline-only, or any non-official color treatment.
- If the official icon is placed inside a tile, the tile may be styled, but the icon artwork inside the tile must keep its original official proportions and colors.
- The icon tile background should be quieter than the icon itself, such as a low-opacity service-color wash, neutral glass surface, or subtle border. Avoid a tile color that visually merges with the official icon background.
- Use the same service title size, weight, color, and position.
- Use the same card-type badge style, size, color treatment, and position. Only the badge text changes.
- Do not add decorative graphics, benefit chips, AWS logos, or extra patterns to only one header. Any subtle header pattern must appear consistently on both cards.

Visible footer requirements for both cards:

- Do not include a visible `Sources` footer or source note in the PNG.
- Do not include full URLs inside the card image.
- Do not include citation text inside the card image.
- Do not include any footer, bottom banner, bottom brand strip, decorative closing band, or empty bottom spacer.
- The final content section should end the card naturally with the same panel rhythm as the rest of the layout.
- Keep official source URLs only in the accompanying Markdown prompt file.

## Overview Card Layout

Create a vertical infographic optimized for social media feeds:

1. Header
2. "What is it?" summary panel
3. Main "How it works" workflow
4. Integrations section
5. Benefits section
6. Common use cases section

Use a modern AWS-inspired editorial style: premium SaaS/engineering education aesthetic, bright canvas, polished typography, confident spacing, refined panels, official AWS icons, and a fresh visual rhythm that feels current rather than like a basic slide template.

## Deep Dive Card Layout

Create a second vertical technical review card optimized for social media feeds:

1. Header
2. `KEY TAKEAWAYS`
3. `CORE MENTAL MODEL`
4. `WHEN TO USE IT`
5. `WATCH OUT`
6. `SECURITY & OPERATIONS`
7. `KNOWLEDGE CHECK`

The Deep Dive card must feel like a technical study card, not an interview-prep card. Do not use words like "interview", "hiring", "candidate", or "exam" in visible card text.

## Creative Direction

The cards must look like a modern technical product design system, not a plain documentation screenshot or a basic PowerPoint infographic.

Target visual feel:

- Contemporary cloud education card.
- Premium AWS-inspired but not a copy of the AWS console.
- Clean, fresh, high-contrast, and polished.
- Editorial spacing with intentional hierarchy.
- More like a modern SaaS dashboard/technical magazine page than a classroom worksheet.

Design qualities to prioritize:

- Compact premium header with service name and clear visual weight without oversized title or icon treatment.
- Modern geometric or humanist sans-serif typography, similar to Inter, SF Pro, Manrope, Satoshi, or Avenir Next.
- Title should feel bold and refined, not default system bold.
- Section titles should use compact uppercase labels with tracking, small icon markers, or color tabs.
- Use layered depth: soft shadows, hairline borders, translucent panels, and subtle tinted surfaces.
- Use asymmetric but balanced composition when useful; avoid every section looking like the same box repeated.
- Prefer cards, pills, ribbons, timeline rails, and stepped flow modules over plain rectangles.
- Use whitespace as a design element, but keep it productive. Do not leave large empty decorative zones that could hold high-value learning content or improve readability.
- End with content, not a footer. Do not add a separate bottom area just to make the card feel finished.

Icon direction:

- Official AWS Architecture Icons remain preferred for AWS services.
- Present icons inside polished containers: soft square tiles, circular badges, glass-like chips, or small labeled tokens.
- Keep icon sizes consistent within a section.
- Avoid clip-art, emoji, generic cartoon icons, or mismatched icon styles.
- Use simple line icons only for generic concepts such as security, speed, cost, scale, or warnings.

Typography direction:

- Use a modern sans-serif look with strong hierarchy.
- Avoid default-looking fonts such as Arial, Calibri, Times New Roman, or generic browser/system fallback styling.
- Avoid overly condensed, playful, handwritten, or futuristic novelty fonts.
- Use large, readable body text with generous line-height.
- Make section headings visually distinct from body copy through size, weight, color, and spacing.
- Keep letter spacing normal for body text; section eyebrow labels may use slight positive tracking.

Color direction:

- Use AWS orange sparingly as a sharp accent, not as the dominant color.
- Use AWS blue/deep navy only as supporting structure, not as the default header background.
- Use one secondary accent per card, such as violet, cyan, teal, or emerald, to keep the composition fresh.
- Use subtle gradients only in small accents, icon tiles, or header bands.
- Background should be light, crisp, and dimensional, not flat gray and not dark.

## Header Rules

The top header must include:

- Official AWS service icon from `shared/assets/aws-icons`, when available.
- Service name as the main title.
- Card type label: `Overview` or `Deep Dive`.
- Nothing else. Do not place descriptions, value propositions, technical focus text, explanatory sentences, badges, benefits, or marketing copy inside the header.

Header icon requirements:

- First check `shared/assets/aws-icons` for the official AWS Architecture Icon file for the specific service.
- Use the local SVG asset when it exists. Do not recreate the icon in SVG, CSS, canvas, or generated bitmap form.
- Keep the official icon color palette unchanged.
- Do not use a custom drawn approximation, generic database/cloud/build icon, emoji, line icon, monochrome icon, or recolored version in the header.
- Do not apply gradients, color overlays, white fills, outline-only styling, or brand-inconsistent effects to the icon artwork.
- If the icon is missing locally, download or extract it from the official AWS Architecture Icons package at `https://aws.amazon.com/architecture/icons/`, save it into `shared/assets/aws-icons`, then use that local asset.
- If the official icon is still unavailable after checking the official package, use a neutral placeholder only in the draft prompt and explicitly flag that the official icon must be added before final PNG export.

Current local header icon map:

```text
AWS CodeBuild -> shared/assets/aws-icons/Arch_AWS-CodeBuild_64.svg
Amazon S3 -> shared/assets/aws-icons/Arch_Amazon-Simple-Storage-Service_64.svg
Amazon RDS -> shared/assets/aws-icons/Arch_Amazon-RDS_64.svg
Amazon EC2 -> shared/assets/aws-icons/Arch_Amazon-EC2_64.svg
AWS App Runner -> shared/assets/aws-icons/Arch_AWS-App-Runner_64.svg
Elastic Load Balancing -> shared/assets/aws-icons/Arch_Elastic-Load-Balancing_64.svg
```

Header color guidance:

- Derive the service accent from the official icon background color.
- Use the accent softly in the header, not as a flat saturated header fill.
- Recommended treatment: light glass header base + low-opacity service-color radial glow + subtle service-color border and badge accent.
- Keep the service title dark navy or another high-contrast text color on light headers.
- Keep the card-type badge consistent across both cards, but it may use the softened service accent as its border or text accent.
- Never reduce contrast to the point where the official AWS icon blends into the header.

General header format:

```text
{AWS_SERVICE_NAME}
{CARD_TYPE_LABEL}
```

Header examples:

```text
AWS CodeBuild
Overview
```

```text
AWS CodeBuild
Deep Dive
```

## Overview Service Focus Panel

For Overview cards only, place a compact service-focus panel directly below the header. This panel holds the main description that used to be in the header.

Overview focus panel:

```text
SERVICE FOCUS
{SHORT_VALUE_PROPOSITION}
{ONE_SENTENCE_DESCRIPTION}
```

Do not include a `SERVICE FOCUS` section on Deep Dive cards. Deep Dive cards must start their body content with `KEY TAKEAWAYS` directly below the header.

Design requirements:

- Keep it compact and visually connected to the header without being part of the header.
- Use a smaller heading and body text than the service title.
- Do not make this panel a second hero block.
- Use the same panel-heading structure as the other content boxes: place `SERVICE FOCUS` in the top-left corner of the panel, then place the value proposition and description below it using the panel's full available text width.
- Do not split this panel into a left icon/title column and a separate right text column. A small icon marker is allowed only if it does not push the heading away from the top-left corner or reduce the body text width.
- The body text should feel evenly arranged inside the panel, with comfortable line lengths and balanced vertical spacing.

## "What Is It?" Panel

Place a compact explanation panel below the Service Focus panel on Overview cards.

Content requirements:

- Title: `WHAT IS IT?`
- 2-3 concise sentences.
- Explain the service in plain English.
- If the official service name contains an acronym or abbreviation, expand it in the first sentence using the official meaning confirmed by AWS documentation. Example: `Amazon EC2, short for Amazon Elastic Compute Cloud, ...`. Do not guess expansions; if AWS does not document the meaning, omit the expansion.
- Mention managed nature, core function, and pricing or scaling model only when confirmed by official AWS docs.
- Avoid unsupported superlatives unless they appear in official AWS sources.

Design requirements:

- Use the same panel-heading structure as the other content boxes: place `WHAT IS IT?` in the top-left corner of the panel, then place the explanation below it using the panel's full available text width.
- Do not split this panel into a left icon/title column and a separate right text column. A small icon marker is allowed only if it does not push the heading away from the top-left corner or reduce the body text width.
- The explanation text should use the width of the box naturally, with clean wrapping, balanced spacing, and no cramped right-side-only text block.

## Main Workflow Rules

The center of the Overview card must be titled:

```text
HOW IT WORKS
```

Use 3-5 numbered steps. The steps must describe the actual conceptual lifecycle of the service according to official AWS documentation.

Each step must include:

- Number badge.
- Short step title.
- One concise explanation.
- Visual container with relevant AWS icons or simplified components.
- Directional arrows showing flow.

Recommended workflow pattern:

```text
1. Input / Request / Source
2. Service Configuration
3. Managed Processing
4. Output / Result
5. Monitoring / Access / Automation, if central to the service
```

Adapt the labels to the specific service. Do not force a CI/CD flow onto services that are not CI/CD services.

## Service-Specific Content Rules

For each AWS service, identify and include only the most important service-specific concepts.

For example:

- CodeBuild: source repository, build project, build environment, buildspec, artifacts, CloudWatch Logs, CodePipeline.
- Amazon S3: buckets, objects, keys, storage classes, access permissions, lifecycle, replication, event notifications.
- Lambda: events, function code, runtime, execution environment, triggers, destinations, CloudWatch Logs.
- IAM: identities, policies, roles, permissions evaluation, AWS services/resources.
- VPC: subnets, route tables, internet gateway, NAT gateway, security groups, network ACLs.

Use these examples as guidance only. Always verify the final content from the official docs for the service being generated.

## Key Takeaways Rules

For the Deep Dive card, include a section titled:

```text
KEY TAKEAWAYS
```

Include 4-6 concise technical bullets. Focus on facts a cloud engineer should remember:

- What the service is best known for.
- Its most important managed responsibility.
- Its core scaling or availability behavior, if documented.
- Its relationship with IAM, logging, networking, or deployment workflows.
- One important limitation or design consideration, if documented.

Avoid trivia and unsupported claims.

## Core Mental Model Rules

For the Deep Dive card, include a section titled:

```text
CORE MENTAL MODEL
```

Include one compact formula, analogy, or relationship that helps the reader remember how the service works.

Format:

```text
{INPUT / CONFIGURATION} + {SERVICE RESPONSIBILITY} -> {OUTPUT / RESULT}
```

Examples:

```text
Source code + buildspec + managed environment -> build artifacts
Buckets + objects + policies -> secure object storage
Events + function code + runtime -> serverless execution
```

The mental model must be technically accurate and supported by official AWS documentation.

## When To Use It Rules

For the Deep Dive card, include a section titled:

```text
WHEN TO USE IT
```

Include 3-5 short bullets that describe scenarios where the service is a strong fit. Each bullet must be practical and AWS-aligned.

## Watch Out Rules

For the Deep Dive card, include a section titled:

```text
WATCH OUT
```

Include 2-4 short bullets that describe common mistakes, limits, design cautions, or cases where another AWS service, design, or pattern may be more appropriate. Do not invent comparisons. Only include cautions supported by official AWS documentation or clearly inferable from the documented purpose of the service.

## Security & Operations Rules

For the Deep Dive card, include a section titled:

```text
SECURITY & OPERATIONS
```

Include 3-5 concise bullets covering practical engineering concerns such as:

- IAM permissions.
- Encryption.
- Network controls.
- Logging and monitoring.
- Resource policies.
- Auditability.
- Availability or resilience controls.

Favor decision-useful reminders over generic security statements. Each bullet should help someone troubleshoot, design access, choose network placement, or explain operational behavior. Avoid broad points that could apply to any AWS service unless they are tied to the service's actual workflow.

Only include topics that apply to the service and are confirmed by official AWS documentation.

## Knowledge Check Rules

For the Deep Dive card, include a section titled:

```text
KNOWLEDGE CHECK
```

Include 3 compact study checkpoints. Each checkpoint must include a practical prompt plus the key answer or principle to remember. Do not show only questions.

Checkpoint style:

- Practical.
- Technical.
- Short enough to read on a phone.
- Scenario-based when possible.
- Focused on service selection, security, scaling, operations, integrations, failure modes, or tradeoffs.
- Useful for technical review and real architecture discussion, not trivia.
- Must teach something directly: include the expected decision, root cause, AWS feature, or operational rule.
- Preferred format: `{scenario or concept} -> {key takeaway}`.

## Integrations Section

Add a compact section below the main workflow titled:

```text
INTEGRATES WITH
```

Include 3-4 relevant AWS services or features that commonly integrate with **{AWS_SERVICE_NAME}**.

Each integration item must include:

- AWS icon.
- Service or feature name.
- Short purpose phrase.

Only include integrations confirmed by official AWS documentation.

## Benefits Section

Place a benefits section below the integrations section.

Title:

```text
BENEFITS
```

Include 4-6 benefits. Each benefit must have:

- Simple line icon or AWS-style icon.
- Short uppercase heading.
- One concise explanation.

Benefit headings should be factual and AWS-aligned, such as:

- SCALABLE
- MANAGED
- SECURE
- COST-EFFECTIVE
- FLEXIBLE
- HIGHLY AVAILABLE
- OBSERVABLE

Only use benefits supported by official AWS documentation.

## Common Use Cases Section

Add a compact section near the bottom titled:

```text
COMMON USE CASES
```

Include 4-6 common use cases for the service.

Each use case must include:

- Icon.
- Short label.
- Optional 3-6 word clarification if needed.

Use concise labels and avoid long descriptions.

## Source Handling Rules

Do not include a visible source note, citation footer, or full URLs in the generated PNG cards.

Keep source traceability in the Markdown prompt files only:

- Include the official AWS documentation URLs used.
- Include the AWS Architecture Icons URL.
- Do not put long raw documentation excerpts in the prompt file.
- Do not render `Sources: Official AWS Documentation and AWS Architecture Icons` or similar text inside either card image.

## LinkedIn Post Copy Rules

For each AWS service, create one concise English LinkedIn post copy file in `series/aws-service-cards/posts`.

The post copy should be only the main publishable description for the AWS service card. Treat the content as general technical knowledge, not as a personal learning update, course note, or study journey. Keep it brief, direct, and ready to paste.

Required structure:

```text
AWS Series #{SERIES_NUMBER} - {AWS_SERVICE_NAME}

{MAIN_DESCRIPTION_2_TO_4_SHORT_LINES}
```

Writing requirements:

- Write the post in English.
- Keep the full post around 40-80 words.
- Use a clear, professional, neutral technical tone.
- Start with the required series title line using the service's series number and official AWS service name.
- Describe what the AWS service is, what it helps with, and the core idea shown in the card.
- Do not mention learning, studying, an AWS learning series, a personal journey, or that the post was created to learn.
- Do not use first-person framing such as "I created", "I am learning", or "my series".
- Do not include engagement questions.
- Do not include hashtags.
- Do not add separate sections such as "Real-world example", "Question", or "Key takeaway".
- Do not make exaggerated career, certification, or expertise claims.
- Do not include long source URLs in the LinkedIn post body.
- Avoid making the post sound like generic marketing copy.
- Keep the text easy to copy and paste directly into LinkedIn.

## Visual Style Rules

Use this consistent style for every card in the series:

- Canvas: vertical social format.
- Recommended size: 1080 x 1350 px for feed posts.
- Alternative size: 1080 x 1920 px for stories or reels.
- Final export format: PNG.
- Aspect ratio: 4:5 for feed cards. Compose natively for 1080 x 1350 whenever possible.
- No distortion: never stretch, squash, or non-proportionally scale the generated card to fit 1080 x 1350. Text, icons, circles, AWS service icons, and UI panels must keep natural proportions.
- Image proportions: both the Overview and Deep Dive images must be generated as native vertical 4:5 cards, not resized from a wide horizontal layout. Any embedded visual asset, AWS icon, diagram module, screenshot-like element, or illustration must preserve its original aspect ratio; use proportional fit, crop, or padding instead of independent horizontal scaling.
- Final sizing: if post-processing is needed, preserve aspect ratio. Use a proportional crop or proportional padding strategy instead of independent width/height scaling.
- Typography must look natural, not horizontally widened or condensed. Letters should have normal proportions and normal tracking.
- Circular icons and badges must remain circular, not oval. Square icon tiles must remain square, not rectangular from scaling.
- Background: white or very light neutral with subtle depth, such as a faint mesh tint, soft section wash, or barely visible technical grid. Keep it clean and bright.
- Primary colors: crisp white, AWS blue/deep navy for text and structure, and the official service accent.
- Accent colors: use AWS orange sparingly plus one fresh secondary accent such as violet, cyan, teal, or emerald.
- Typography: modern premium sans-serif look; bold refined title, crisp section labels, readable body text, strong hierarchy.
- Icons: official AWS Architecture Icons where possible, presented in polished icon tiles or badges.
- Header icons are stricter than section icons: the header must use the official AWS Architecture Icon asset with official colors preserved.
- Lines: clean directional arrows, timeline rails, connector dots, or stepped flow paths with clear direction.
- Containers: refined panels with subtle radius, hairline borders, soft shadow, faint tint, or glass-like treatment. Avoid identical plain boxes everywhere.
- Spacing: compact, consistent gutters, clear visual grouping, and intentional whitespace.
- Outer margins: target 32-48 px on a 1080 x 1350 card. Never exceed 56 px unless required by a bleed-safe export.
- Side margins: keep left and right whitespace tight and useful; avoid wide white gutters on both sides.
- Usable width rule: on a 1080 px wide card, the main content frame should be about 984-1016 px wide. The left edge of the main content should sit around x=32-48 px and the right edge around x=1032-1048 px.
- Do not compose a narrow poster inside the 1080 px canvas. Avoid centered layouts where all panels sit inside a smaller inner page with 70+ px blank gutters on both sides.
- Section width rule: header, workflow, and full-width sections should span nearly the full usable width. Two-column rows should fill that same usable width with compact internal gutters, not shrink inward.
- Content area: use roughly 92-96% of the canvas width and 90-94% of the canvas height. Avoid oversized top, side, or bottom blanks.
- Width density: both Overview and Deep Dive cards must use the available horizontal space. Wide side gutters are a layout error, not a premium whitespace choice.
- Section gaps: target 14-22 px between major panels and 8-14 px inside compact groups.
- Header footprint: keep the header compact, typically 13-17% of card height for Overview and 11-15% for Deep Dive.
- Header icon size: target 88-120 px square on a 1080 px wide card; never let the icon tile dominate the first viewport.
- Header title size: use a strong but moderate title, usually 54-68 px for the service name on a 1080 px wide card. Avoid oversized hero typography.
- Header layout: prefer a compact horizontal lockup with icon, service name, and card type only. Do not use a tall hero block unless the service name is very short.
- Header style consistency: Overview and Deep Dive for the same service must use the exact same header design system. Do not make one header dark and the other light, one boxed and the other unboxed, or one decorative and the other plain.
- Footer rule: no footer, no bottom banner, no closing stripe, no source area, and no decorative bottom band. The last content section must be the visual ending.
- Deep Dive density: use a tighter study-card layout with more useful content per panel and fewer decorative empty zones.
- Density: informative but breathable; prioritize mobile readability and visual polish over fitting every detail.
- Text density: keep bullets short, ideally 8-12 words each.
- Explanations: maximum 1-2 short lines per item.
- Prefer fewer high-value facts over many low-value details.
- Overview card: maximum 70-90 visible words.
- Deep Dive card: maximum 110-140 visible words.
- Overview should feel more visual and workflow-driven.
- Deep Dive should feel more like a technical checklist.
- Header should feel premium: compact title, restrained service icon tile, clear card type label, and optional small accent marker. Avoid large hero headers.
- Workflow should feel dynamic: use a timeline, stepped cards, connected modules, or layered flow instead of a flat row of identical boxes when possible.
- Benefits and use cases should use compact chips or tiles with icon accents, not long text blocks.
- The final card must look ready for a modern LinkedIn carousel, Instagram post, or engineering newsletter graphic.

Avoid:

- Dark, blurry, or decorative backgrounds.
- Excessive gradients or loud neon effects.
- Tiny unreadable text.
- Unverified claims.
- Overloaded cards with every possible feature.
- Generic stock icons when official AWS icons are available.
- Mixing unrelated AWS services just to fill space.
- Explicit interview, exam, or hiring language in visible card text.
- Visible source footers, citation blocks, or URLs inside the card image.
- Any footer, bottom banner, closing stripe, decorative brand strip, or empty bottom spacer.
- Default-looking typography, especially Arial, Calibri, Times New Roman, or generic slide-deck fonts.
- Plain spreadsheet-like grids, heavy borders, harsh drop shadows, or boxy template layouts.
- Repeating the exact same card shape for every section unless the design system still feels intentional.
- Cartoon clip-art, emoji icons, 3D stickers, or mismatched icon styles.
- Dense paragraphs, center-aligned body text blocks, or cramped bullet lists.
- Large empty bottom bars left behind after removing the Sources section.

## Accuracy Checklist

Before finalizing the cards, verify:

- The service definition matches official AWS documentation.
- The workflow steps reflect how the service actually works.
- Integrations are documented by AWS.
- Benefits are supported by AWS documentation.
- Use cases are realistic and AWS-aligned.
- Key takeaways are technically useful and not trivia.
- Core mental model is technically accurate.
- When-to-use guidance is realistic.
- Watch-out guidance is accurate and useful.
- Security and operations details are documented by AWS.
- Knowledge check checkpoints include the key answer or principle, not only questions.
- All visible text is in English.
- No visible `Sources` footer, citation block, or URL appears in the PNG.
- No footer, bottom banner, closing stripe, decorative brand strip, or empty bottom spacer appears in the PNG.
- AWS service names use official capitalization.
- No deprecated service names or obsolete features are included.
- Both cards are readable on mobile screens.

## Prompt Variables

Replace these variables for each service:

```text
{AWS_SERVICE_NAME}
{OFFICIAL_AWS_DOC_URLS}
{OUTPUT_SIZE}
{SHORT_VALUE_PROPOSITION}
{ONE_SENTENCE_DESCRIPTION}
{CORE_WORKFLOW_STEPS}
{KEY_INTEGRATIONS}
{KEY_BENEFITS}
{COMMON_USE_CASES}
{KEY_TAKEAWAYS}
{CORE_MENTAL_MODEL}
{WHEN_TO_USE_IT}
{WATCH_OUT}
{SECURITY_AND_OPERATIONS}
{KNOWLEDGE_CHECK}
{LINKEDIN_POST_COPY}
```

## Anti-Duplication Rules

Avoid repeating the same facts across both cards:

- Do not repeat the full `WHAT IS IT?` text on the Deep Dive card.
- Do not repeat the full `HOW IT WORKS` workflow on the Deep Dive card.
- Do not list the same integrations in both cards unless they are essential to the Deep Dive point.
- Do not use the same bullet wording in multiple sections.
- Prefer deeper technical context on the Deep Dive card instead of restating Overview content.

## Source-Backed Language Rules

Use AWS-backed wording only when official AWS documentation supports it.

Terms that require official confirmation for the specific service:

- `fully managed`
- `serverless`
- `highly available`
- `durable`
- `scalable`
- `pay-as-you-go`
- `low latency`
- `secure`
- `global`
- `fault tolerant`

If AWS documentation does not clearly support the wording for the specific service, use neutral language instead.

## Service Execution Template

Use this section when generating the two prompts for each service.

```text
Create two vertical AWS educational cards for {AWS_SERVICE_NAME}: Overview and Deep Dive.

Final output format: PNG.
Recommended size:
- Overview: 1080 x 1350 px.
- Deep Dive: 1080 x 1350 px.

Use only these official AWS sources:
{OFFICIAL_AWS_DOC_URLS}

Write all visible card text in English.

Visual direction:
- Make the cards look modern, fresh, polished, and premium.
- Use a contemporary SaaS/technical editorial style, not a basic slide template.
- Use refined typography similar to Inter, SF Pro, Manrope, Satoshi, or Avenir Next.
- Keep official AWS icons, but place them inside polished icon tiles, badges, or chips.
- Use layered depth, soft shadows, hairline borders, subtle tinted panels, and strong whitespace.
- Use a light base, AWS blue/deep navy for text and structure, AWS orange as a small accent, and one fresh secondary accent.
- Avoid Arial/Calibri-like typography, plain grids, generic clip-art, cartoon icons, heavy borders, and cramped text.

Follow the standard AWS Service Card Prompt Rules:
- Overview card:
  - Header with official icon, service name, and `Overview` label only.
  - SERVICE FOCUS section directly below the header with subtitle/value proposition and one-sentence description; place the section heading at the top-left of the panel and let the text use the full panel width below it.
  - WHAT IS IT? panel below SERVICE FOCUS with a concise definition; when the service name contains an acronym or abbreviation, expand it in the first sentence with the official AWS meaning, such as `Amazon EC2, short for Amazon Elastic Compute Cloud, ...`; place the section heading at the top-left of the panel and let the text use the full panel width below it.
  - HOW IT WORKS section with 3-5 numbered workflow steps.
  - INTEGRATES WITH section containing 3-4 confirmed integrations.
  - BENEFITS section with 4-6 supported benefits.
  - COMMON USE CASES section with 4-6 practical use cases.
  - No visible footer, bottom banner, citation block, source area, or URL.
- Deep Dive card:
  - Header with official icon, service name, and `Deep Dive` label only.
  - KEY TAKEAWAYS section with 4-6 technical bullets.
  - CORE MENTAL MODEL section with one compact formula or relationship.
  - WHEN TO USE IT section with 3-5 practical bullets.
  - WATCH OUT section with 2-4 cautions or design notes.
  - SECURITY & OPERATIONS section with 3-5 documented operational considerations.
  - KNOWLEDGE CHECK section with 3 compact study checkpoints that include the key answer or principle.
  - No visible footer, bottom banner, citation block, source area, or URL.

LinkedIn post copy:
- Create `series/aws-service-cards/posts/{series-number}-{service-slug}-linkedin-post.md`.
- Use the required brief main-description structure from the rules.
- Keep it practical, neutral, and written in English.
- Do not mention learning, personal study, questions, hashtags, or separate engagement sections.

Use official AWS Architecture Icons when possible.
Keep both layouts clean, structured, and consistent with the AWS card series.
Do not use explicit interview, exam, hiring, or candidate language in visible card text.
Do not duplicate the same explanatory content across both cards.
Do not include claims, integrations, limits, or feature names that are not confirmed in the provided official AWS sources.
Keep official source URLs in the Markdown prompt only, not inside the generated PNG cards.
```

## Official Reference Links Used To Define These Rules

- AWS CodeBuild User Guide, "What is AWS CodeBuild?": https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html
- AWS CodeBuild User Guide, "AWS CodeBuild concepts": https://docs.aws.amazon.com/codebuild/latest/userguide/concepts.html
- Amazon S3 User Guide, "What is Amazon S3?": https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
- AWS Architecture Icons: https://aws.amazon.com/architecture/icons/
