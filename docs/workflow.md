# Workflow

Use this repo as a production workspace for LinkedIn technical content.

## Content Lifecycle

1. Pick or create a series in `series/`.
2. Add or update the item in that series' `index.yml`.
3. Research from approved sources defined in `rules.md`.
4. Create the Markdown prompt in `prompts/`.
5. Create or update the render template in `templates/`.
6. Export the final image to `images/`.
7. Write LinkedIn copy in `posts/`.
8. Mark the item status in `index.yml`.

## Status Values

```text
planned      Item is listed but not started
in_progress  Prompt, template, image, or post is incomplete
ready        Assets and post are ready to publish
published    Published on LinkedIn
```

## Naming

Use lowercase slugs in filenames.

For card-style series:

```text
prompts/{slug}-overview-prompt.md
prompts/{slug}-deep-dive-prompt.md
templates/{slug}-overview-card.html
templates/{slug}-deep-dive-card.html
images/{slug}-overview.png
images/{slug}-deep-dive.png
posts/{number}-{slug}-linkedin-post.md
```

For architecture diagrams:

```text
prompts/{slug}-architecture-prompt.md
templates/{slug}-architecture-diagram.html
images/{slug}-architecture.png
posts/{number}-{slug}-architecture-post.md
```
