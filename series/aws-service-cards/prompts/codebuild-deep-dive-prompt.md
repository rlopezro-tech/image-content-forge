# AWS CodeBuild Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/concepts.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/create-project.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/builds-working.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/security.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/security-encryption.html
- https://docs.aws.amazon.com/codebuild/latest/userguide/setting-up-service-role.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic card for AWS CodeBuild.

Use case: productivity-visual.
Asset type: 1080 x 1350 px PNG social media carousel card.
Card type: Deep Dive.
Visible language: English only.
Use official AWS Architecture Icons where possible, especially AWS CodeBuild, IAM, Amazon S3, Amazon CloudWatch, AWS KMS, Amazon ECR, and VPC/network symbols.

### Design System

Use the exact same header design system as the AWS CodeBuild Overview card: compact light/glass header with a softened AWS CodeBuild magenta-violet accent, same official service icon tile, same service name typography, same card-type badge shape and placement. Do not use the old dark navy header treatment. Only the badge text changes to Deep Dive.

Use a premium modern AWS-inspired technical study-card style. Bright light canvas, crisp white panels, subtle blue-tinted surfaces, soft shadows, hairline borders, AWS orange as a small accent, and one secondary accent in teal or cyan. Use modern sans-serif typography similar to Inter, SF Pro, Manrope, or Satoshi. Do not use Arial, Calibri, Times New Roman, novelty fonts, emojis, clip art, or stock illustrations.

The card must use the full usable width. On the 1080 px canvas, keep the main content frame about 984-1016 px wide, with left edge around x=32-48 px and right edge around x=1032-1048 px. Avoid a narrow centered poster and avoid wide blank side gutters.

Do not include a footer, source note, URL, citation block, bottom banner, closing stripe, decorative bottom band, or empty bottom spacer. End naturally with the final content section.

### Header

Visible header text:

AWS CodeBuild
Deep Dive

Header content only:
- Official AWS CodeBuild icon from `shared/assets/aws-icons/Arch_AWS-CodeBuild_64.svg` in a polished square tile. Preserve the official icon colors exactly.
- Service name.
- Card type badge.

Do not place descriptions, value propositions, benefits, extra badges, AWS logo marks, or decorative claims inside the header.

### Key Takeaways

Title: KEY TAKEAWAYS
Use 5 concise technical bullets:

- Fully managed build service for CI workloads.
- Build project controls source, environment, artifacts, and logs.
- buildspec.yml defines commands and artifact paths.
- On-demand fleets scale and are destroyed after builds.
- Service role permissions shape what builds can access.

### Core Mental Model

Title: CORE MENTAL MODEL
Show this as one compact formula band:

Source code + buildspec + managed environment -> tests, logs, artifacts

### When To Use It

Title: WHEN TO USE IT
Use 4 short bullets:

- Build code inside AWS-native pipelines.
- Run repeatable tests from source changes.
- Package deployable artifacts into S3.
- Build and push container images.

### Watch Out

Title: WATCH OUT
Use 3 short cautions:

- Missing or invalid buildspec can fail early.
- Concurrent build limits can queue work.
- Privileged mode is needed for some Docker builds.

### Security & Operations

Title: SECURITY & OPERATIONS
Use 4 concise bullets:

- Grant the service role least privilege.
- Store secrets in Parameter Store or Secrets Manager.
- Artifacts and logs are encrypted by default.
- Use CloudWatch Logs for build troubleshooting.

### Knowledge Check

Title: KNOWLEDGE CHECK
Use 3 compact scenario checkpoints in this format:

- Need pipeline builds -> add CodeBuild action in CodePipeline.
- Need command sequence -> define phases in buildspec.yml.
- Need audit trail -> review CodeBuild details and CloudWatch Logs.

### Quality Rules

All visible text must be readable on mobile. Keep total visible words around 110-140. Preserve natural proportions: no stretched typography, oval circles, warped icons, or distorted square tiles. Use official AWS service names and capitalization. Do not include unsupported claims, pricing promises, interview/exam language, or source footers.
