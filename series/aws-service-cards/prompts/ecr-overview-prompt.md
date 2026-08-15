# Amazon ECR Overview Prompt

## Official AWS Sources

- https://aws.amazon.com/ecr/
- https://aws.amazon.com/ecr/features/
- https://docs.aws.amazon.com/AmazonECR/latest/userguide/what-is-ecr.html
- https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html
- https://docs.aws.amazon.com/AmazonECR/latest/userguide/images.html
- https://docs.aws.amazon.com/AmazonECR/latest/userguide/ecr-use-cases.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic for Amazon Elastic Container Registry.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official Amazon ECR Architecture Icon from the AWS Architecture Icons package.

### Header

Amazon ECR

Overview

### Service Focus

Store, share, and deploy container images and OCI artifacts.

Amazon Elastic Container Registry is an AWS managed container image registry for Docker images, OCI images, and OCI compatible artifacts.

### WHAT IS IT?

Amazon Elastic Container Registry is a managed container image registry service. ECR provides private and public repositories, IAM-based access control, encryption, and integration with AWS container services.

### HOW IT WORKS

1. Build image: Create a Docker or OCI container image in your build workflow.
2. Authenticate: Use AWS credentials and registry login to access Amazon ECR.
3. Push to repository: Store tagged images or OCI artifacts in an ECR repository.
4. Secure and manage: Apply IAM, repository policies, scanning, lifecycle rules, and encryption.
5. Pull for runtime: ECS, EKS, Lambda, or other clients pull images for deployment.

### INTEGRATES WITH

- Amazon ECS: Pulls images for task definitions.
- Amazon EKS: Pulls images for Kubernetes pods.
- AWS Lambda: Uses container images for functions.
- AWS IAM: Controls repository and registry access.
- Amazon Inspector: Provides enhanced image vulnerability scanning.
- AWS KMS: Supports customer-managed encryption keys.
- AWS CodeBuild: Builds and pushes container images.

### BENEFITS

- MANAGED: No container registry infrastructure to operate.
- SECURE: IAM permissions, HTTPS transfer, encryption, and image scanning.
- COMPATIBLE: Supports Docker, OCI images, OCI artifacts, and Docker Registry HTTP API V2.
- INTEGRATED: Works directly with AWS build, deployment, and container services.

### COMMON USE CASES

- Private image registry
- ECS deployments
- EKS workloads
- Lambda container images
- Vulnerability scanning
- Image lifecycle cleanup

### Visual Style

Use a clean AWS-inspired technical infographic style with a bright canvas, polished typography, thin borders, subtle shadows, official AWS icon treatment, and compact engineering-focused panels.

### Source Note

Do not include source URLs or a visible Sources footer in the PNG.

## Accuracy Checklist

- Service definition is confirmed by official AWS documentation.
- Workflow steps match Amazon ECR documentation.
- Integrations are confirmed by official AWS documentation.
- Benefits are supported by official AWS documentation.
- All visible text is in English.
- AWS service names use official capitalization.
- Final format is PNG.
- Canvas is vertical, 1080 x 1350, and readable on social media feeds.
