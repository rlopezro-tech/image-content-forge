---
name: aws-diagram-generator
description: Use when creating standardized English prompts for vertical PNG AWS service summary diagrams for social media, one service at a time, using only official AWS documentation and AWS Architecture Icons as sources.
---

# AWS Diagram Generator

Use this skill when the user asks to create, update, or standardize a prompt for a vertical PNG AWS service diagram for social media, such as CodeBuild, S3, Lambda, IAM, VPC, ECS, CloudFront, or any other AWS service.

## Core Workflow

1. Identify the AWS service requested by the user.
2. Research the service using official AWS sources only:
   - AWS Documentation: `https://docs.aws.amazon.com/`
   - AWS product pages: `https://aws.amazon.com/`
   - AWS Architecture Icons: `https://aws.amazon.com/architecture/icons/`
3. Extract only confirmed information:
   - Service definition.
   - Core workflow.
   - Main components.
   - Common integrations.
   - Benefits.
   - Common use cases.
4. Generate a vertical social-media diagram prompt in English using the standard layout.
5. Save the prompt in the user's AWS series folder unless they request another location.

Default output folder:

```text
./linkedin-content-forge
```

Default file naming:

```text
{service-slug}-diagram-prompt.md
```

Example:

```text
codebuild-diagram-prompt.md
s3-diagram-prompt.md
lambda-diagram-prompt.md
```

## Required Source Rules

Use official AWS documentation as the source of truth. Do not rely on memory for volatile service details, supported integrations, feature names, limits, or pricing behavior.

Do not use:

- Third-party blogs.
- YouTube transcripts.
- Community tutorials.
- Generated summaries without official source verification.
- Outdated screenshots.
- Unverified AWS claims.

If a claim cannot be confirmed in official AWS documentation, leave it out.

## Output Language

All visible diagram text must be in English.

User-facing conversation can remain in the user's language.

## Output Format

Default diagram output:

```text
PNG
```

Default canvas:

```text
1080 x 1350 px
```

Use `1080 x 1920 px` only when the service needs more vertical space, such as complex workflows or many required integrations.

## Diagram Structure

For the full layout and content rules, read:

```text
references/diagram-structure.md
```

Use that reference when generating any final service prompt.

## Prompt Content Requirements

Each generated service prompt must include:

- Title with the official AWS service name.
- Official AWS source links used.
- Vertical PNG output requirements.
- Header content.
- `WHAT IS IT?` panel text.
- `HOW IT WORKS` workflow with 3-5 numbered steps.
- `INTEGRATES WITH` section with 5-7 confirmed services or features.
- `BENEFITS` section with 4-6 supported benefits.
- `COMMON USE CASES` section with 4-6 use cases.
- Visual style instructions.
- Accuracy checklist.

## File Output Rules

When saving a service prompt:

- Use Markdown.
- Keep the content organized and easy to copy into an image generation tool.
- Include official source URLs in the Markdown file.
- Do not put long raw documentation excerpts in the file.
- Keep diagram-facing text concise.
- Preserve consistent section names across all service prompts.

## Good Trigger Examples

Use this skill for requests like:

- "Generate the AWS CodeBuild diagram prompt."
- "Next service: S3."
- "Create the Lambda diagram in the same style."
- "Make a prompt for an AWS IAM summary diagram."
- "Use official AWS docs and save it in linkedin-content-forge."
- "Make it vertical for social media."
- "Generate the prompt for a PNG post."

## Completion Criteria

The task is complete when:

- The AWS service has been researched from official AWS sources.
- The prompt is generated in English.
- The prompt follows the standard vertical social-media diagram structure.
- The prompt specifies PNG output.
- The Markdown file is saved in the AWS series folder.
- The final response tells the user the file path and mentions the official AWS sources used.
