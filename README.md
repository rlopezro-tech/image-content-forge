# LinkedIn Content Forge

Repository for generating technical images and post copy for LinkedIn.

The repo is organized around content series. Each series owns its prompts, render templates, final images, posts, and rules. Shared assets and reusable guidance live outside any single series so new topics can be added without reshaping the project.

## Structure

```text
docs/                         Repo-level workflow and publishing notes
shared/                       Assets, rules, and templates reused by series
series/                       Independent LinkedIn content series
skills/                       Codex skills used to generate standardized content
scripts/                      Utility scripts for validation and indexing
```

## Series

```text
series/aws-service-cards/             AWS service overview and deep-dive cards
series/system-architecture-diagrams/  Production architecture diagrams
series/ai-engineering-concepts/       AI engineering concept cards
```

Every series should follow this contract:

```text
series/{series-slug}/
  README.md
  rules.md
  index.yml
  prompts/
  templates/
  images/
  posts/
```

## Shared Assets

AWS architecture icons and future reusable assets live here:

```text
shared/assets/aws-icons/
shared/assets/logos/
shared/assets/brand/
shared/assets/fonts/
```

Use shared assets when the same visual resource can support more than one series. Keep series-specific outputs inside the series folder.

## Current Status

- `aws-service-cards`: robust existing series with 31 services completed.
- `system-architecture-diagrams`: started, with example architecture diagrams.
- `ai-engineering-concepts`: scaffolded for future AI Engineer content.

## Generating AWS Service Cards

From this repository root:

```bash
codex "Use the rules in './series/aws-service-cards/rules.md' to generate the two-card AWS workflow for {AWS_SERVICE_NAME}. Research only official AWS documentation and AWS Architecture Icons. Create the Overview and Deep Dive Markdown prompts in './series/aws-service-cards/prompts' and generate the final PNG images in './series/aws-service-cards/images'. Create the LinkedIn post in './series/aws-service-cards/posts'. Use the service slug '{service-slug}'. All visible card text must be in English."
```

Expected files:

```text
series/aws-service-cards/prompts/{service-slug}-overview-prompt.md
series/aws-service-cards/prompts/{service-slug}-deep-dive-prompt.md
series/aws-service-cards/templates/{service-slug}-overview-card.html
series/aws-service-cards/templates/{service-slug}-deep-dive-card.html
series/aws-service-cards/images/{service-slug}-overview.png
series/aws-service-cards/images/{service-slug}-deep-dive.png
series/aws-service-cards/posts/{series-number}-{service-slug}-linkedin-post.md
```

## Generating Architecture Diagrams

```bash
codex "Use the rules in './series/system-architecture-diagrams/rules.md' to generate a complete real production-runtime AWS architecture diagram for {APP_OR_WORKLOAD_NAME} in vertical LinkedIn format. Research only official AWS documentation, AWS Architecture Center, AWS Well-Architected Framework, and AWS Architecture Icons. Create the Markdown prompt in './series/system-architecture-diagrams/prompts', the render template in './series/system-architecture-diagrams/templates', and the final PNG image in './series/system-architecture-diagrams/images'. Use the architecture slug '{architecture-slug}'. All visible diagram text must be in English."
```

## Adding A New Series

Create:

```text
series/{new-series-slug}/
  README.md
  rules.md
  index.yml
  prompts/
  templates/
  images/
  posts/
```

Then define:

- Audience and publishing format.
- Canvas size.
- Naming convention.
- Source rules.
- Visual style.
- Required output files.
- `index.yml` item statuses.

Use `status: planned`, `in_progress`, `ready`, or `published` in indexes.
