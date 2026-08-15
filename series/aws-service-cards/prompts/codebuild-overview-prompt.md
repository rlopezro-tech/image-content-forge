# AWS CodeBuild Overview Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/concepts.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/create-project.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/getting-started-overview.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/sample-codepipeline.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic card for AWS CodeBuild.

Use case: productivity-visual.
Asset type: 1080 x 1350 px PNG social media carousel card.
Card type: Overview.
Visible language: English only.
Use official AWS Architecture Icons where possible, especially AWS CodeBuild, Amazon S3, AWS CodePipeline, Amazon CloudWatch, Amazon ECR, and AWS KMS.

### Design System

Use a premium modern AWS-inspired technical education style. Bright light canvas, compact light/glass header with a softened AWS CodeBuild magenta-violet accent, crisp white panels, subtle blue-tinted surfaces, soft shadows, hairline borders, AWS orange as a small accent, and one secondary accent in teal or cyan. Do not use the old dark navy header treatment. Use modern sans-serif typography similar to Inter, SF Pro, Manrope, or Satoshi. Do not use Arial, Calibri, Times New Roman, novelty fonts, emojis, clip art, or stock illustrations.

The card must use the full usable width. On the 1080 px canvas, keep the main content frame about 984-1016 px wide, with left edge around x=32-48 px and right edge around x=1032-1048 px. Avoid a narrow centered poster and avoid wide blank side gutters.

The header must match the AWS CodeBuild Deep Dive card header exactly except for the badge text. Keep the header compact, about 13-17% of card height.

Do not include a footer, source note, URL, citation block, bottom banner, closing stripe, decorative bottom band, or empty bottom spacer. End naturally with the final content section.

### Header

Visible header text:

AWS CodeBuild
Overview

Header content only:
- Official AWS CodeBuild icon from `shared/assets/aws-icons/Arch_AWS-CodeBuild_64.svg` in a polished square tile. Preserve the official icon colors exactly.
- Service name.
- Card type badge.

Do not place descriptions, value propositions, benefits, extra badges, AWS logo marks, or decorative claims inside the header.

### Service Focus

Title: SERVICE FOCUS
Main line: Build and test code without managing build servers.
Body: AWS CodeBuild compiles source code, runs tests, and produces deployable artifacts in managed build environments.

Keep this panel compact and visually connected below the header, but separate from it.

### What Is It?

Title: WHAT IS IT?
Body: A fully managed cloud build service for CI workflows. Define a build project, point it at source code, and let CodeBuild run commands from a buildspec file.

### How It Works

Title: HOW IT WORKS
Use a connected 5-step workflow with numbered badges, clean arrows, and small AWS-style icon containers:

1. Source
   Repo or S3 input enters the build project.
2. Project
   Project selects source, environment, artifacts, and logs.
3. Buildspec
   YAML commands define install, build, and artifact behavior.
4. Build
   Managed environment runs tests and build commands.
5. Output
   Artifacts go to S3; logs stream to CloudWatch.

Make this workflow the visual center of the card. Use a dynamic timeline or stepped flow rather than five identical boxes.

### Integrates With

Title: INTEGRATES WITH
Use 4 compact integration chips with AWS icons and short purpose phrases:

- CodePipeline: CI/CD orchestration
- Amazon S3: source and artifacts
- CloudWatch Logs: build logs
- Amazon ECR: container images

### Benefits

Title: BENEFITS
Use 4 compact benefit tiles:

- MANAGED: No build servers to provision or patch.
- ON DEMAND: Scales with build requests.
- FLEXIBLE: Managed images or custom build tools.
- OBSERVABLE: Build details and logs are available.

### Common Use Cases

Title: COMMON USE CASES
Use 4 compact chips:

- Compile applications
- Run unit tests
- Package artifacts
- Build containers

### Quality Rules

All visible text must be readable on mobile. Keep total visible words around 70-90. Preserve natural proportions: no stretched typography, oval circles, warped icons, or distorted square tiles. Use official AWS service names and capitalization. Do not include unsupported claims, pricing promises, or source footers.
