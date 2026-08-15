# AWS Fargate Overview Prompt

## Official AWS Sources

- https://aws.amazon.com/fargate/
- https://aws.amazon.com/fargate/features/
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS_Fargate.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-capacity-providers.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic for AWS Fargate.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official AWS Fargate Architecture Icon from the AWS Architecture Icons package.

### Header

AWS Fargate

Overview

### Service Focus

Run containers without managing servers or EC2 clusters.

AWS Fargate provides serverless, pay-as-you-go compute for containers used with Amazon ECS and Amazon EKS.

### WHAT IS IT?

AWS Fargate is a serverless compute engine for containers. With Amazon ECS, you package an application in containers, define CPU, memory, networking, and IAM settings, then launch tasks or services without provisioning EC2 instances.

### HOW IT WORKS

1. Container image: Store or reference an application image, commonly from Amazon ECR.
2. Task definition: Define containers, CPU, memory, roles, ports, and network mode.
3. ECS service or task: Run a service for long-running workloads or a standalone task for jobs.
4. Fargate capacity: AWS runs the container workload on managed serverless infrastructure.
5. Observe and route: Use load balancing, logs, metrics, and events around the running tasks.

### INTEGRATES WITH

- Amazon ECS: Orchestrates Fargate tasks and services.
- Amazon EKS: Runs Kubernetes pods on Fargate profiles.
- Amazon ECR: Stores container images.
- Elastic Load Balancing: Routes traffic to ECS services.
- Amazon VPC: Provides task networking with awsvpc mode.
- Amazon CloudWatch: Collects logs, metrics, and alarms.
- AWS IAM: Controls task execution and application permissions.

### BENEFITS

- SERVERLESS: No EC2 cluster provisioning, patching, or host management.
- SCALABLE: Run tasks and services without managing infrastructure capacity.
- COST-ALIGNED: Pay for the CPU and memory resources used by running tasks.
- INTEGRATED: Works with ECS, EKS, VPC, IAM, CloudWatch, and load balancers.

### COMMON USE CASES

- Web services
- APIs
- Microservices
- Batch jobs
- Event-driven tasks
- Container migrations

### Visual Style

Use a clean AWS-inspired technical infographic style with a bright canvas, polished typography, thin borders, subtle shadows, official AWS icon treatment, and compact engineering-focused panels.

### Source Note

Do not include source URLs or a visible Sources footer in the PNG.

## Accuracy Checklist

- Service definition is confirmed by official AWS documentation.
- Workflow steps match Amazon ECS and AWS Fargate documentation.
- Integrations are confirmed by official AWS documentation.
- Benefits are supported by official AWS documentation.
- All visible text is in English.
- AWS service names use official capitalization.
- Final format is PNG.
- Canvas is vertical, 1080 x 1350, and readable on social media feeds.
