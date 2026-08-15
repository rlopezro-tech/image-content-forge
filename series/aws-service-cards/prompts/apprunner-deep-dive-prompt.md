# AWS App Runner Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/apprunner/latest/dg/what-is-apprunner.html
- https://docs.aws.amazon.com/apprunner/latest/dg/architecture.html
- https://docs.aws.amazon.com/apprunner/latest/dg/manage-create.html
- https://docs.aws.amazon.com/apprunner/latest/dg/manage-deploy.html
- https://docs.aws.amazon.com/apprunner/latest/api/API_StartDeployment.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic card for AWS App Runner.

Use case: productivity-visual.
Asset type: 1080 x 1350 px PNG social media carousel card.
Card type: Deep Dive.
Visible language: English only.
Use official AWS Architecture Icons where possible, especially AWS App Runner, Amazon ECR, AWS IAM, Amazon CloudWatch, and Amazon VPC.

### Header

AWS App Runner
Deep Dive

Header content only: official AWS App Runner icon from `shared/assets/aws-icons/Arch_AWS-App-Runner_64.svg` in a polished square tile, service name, and card type badge. Preserve the official icon colors exactly. Use the current light/glass header with a softened AWS App Runner orange accent. Do not use the old dark navy header treatment. Do not add descriptions inside the header.

### Key Takeaways

- A service runs a web app from source code or an image.
- Source can come from GitHub, Bitbucket, Amazon ECR, or ECR Public.
- App Runner builds source code or pulls a ready container image.
- Automatic deployments track source changes when enabled.
- Existing customers can continue using App Runner after the 2026 availability change.

### Core Mental Model

source + runtime/image + service config -> managed web service

### When To Use It

- Deploy HTTP services without managing servers.
- Run simple APIs or containerized apps.
- Prefer managed build, deploy, scale, and routing.
- Connect a repo or image registry directly.

### Watch Out

- Not open to new customers after March 31, 2026.
- Source directory affects automatic deployment scope.
- Images remain the customer's patching responsibility.

### Security & Operations

- Use IAM roles for service permissions.
- Send logs and metrics to CloudWatch.
- Configure VPC connectors for outbound private traffic.
- Review autoscaling settings and health behavior.

### Knowledge Check

- Need code deploys -> connect GitHub or Bitbucket.
- Need image deploys -> use Amazon ECR or ECR Public.
- Need redeploy -> use automatic or manual deployment.

### Quality Rules

All visible text must be readable on mobile. Keep total visible words around 110-140. Preserve natural proportions. Use official AWS service names and capitalization. Do not include source footers.
