# AWS Fargate Deep Dive Prompt

## Official AWS Sources

- https://aws.amazon.com/fargate/features/
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS_Fargate.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-tasks-services.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-capacity-providers.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service_definition_parameters.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational technical review card for AWS Fargate.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official AWS Fargate Architecture Icon from the AWS Architecture Icons package.

### Header

AWS Fargate

Deep Dive

### KEY TAKEAWAYS

- Fargate is compute capacity for containers, not a container orchestrator.
- ECS services or tasks decide desired work; Fargate runs the capacity.
- Task definitions must specify Fargate-compatible CPU and memory.
- Fargate tasks use awsvpc networking and get ENI-based VPC networking.
- Use FARGATE or FARGATE_SPOT capacity providers for ECS placement.

### CORE MENTAL MODEL

container image + task definition + ECS/EKS orchestration -> Fargate-managed runtime

You define the container workload contract. AWS manages the underlying compute infrastructure used to run it.

### WHEN TO USE IT

- Containerized apps where host management is unnecessary.
- ECS services that need managed compute capacity.
- Batch or scheduled container jobs.
- Microservices behind a load balancer.

### WATCH OUT

- Fargate is configured through ECS or EKS; it is not a standalone app platform.
- CPU and memory must use supported Fargate task-size combinations.
- Fargate Spot is interruption tolerant and can receive a two-minute warning.
- Networking, security groups, subnets, and IAM roles still need deliberate design.

### SECURITY & OPERATIONS

- Use task execution roles for image pulls, logs, and agent actions.
- Use task roles for application access to AWS APIs.
- Send logs and metrics to CloudWatch.
- Route service traffic through supported load balancers.
- Use EventBridge for task state-change events.

### KNOWLEDGE CHECK

- Need container orchestration -> use ECS or EKS with Fargate capacity.
- Need AWS API access from code -> grant permissions through the task role.
- Need external HTTP traffic -> use an ECS service with a load balancer.
- Need lower-cost interruptible capacity -> consider FARGATE_SPOT.

### Visual Style

Use a clean AWS-inspired technical study-card style with a bright canvas, compact panels, official icon treatment, high contrast, and no visible source footer.

### Source Note

Do not include source URLs or a visible Sources footer in the PNG.

## Accuracy Checklist

- Claims are confirmed by official AWS documentation.
- Deep Dive card does not duplicate the Overview workflow.
- All visible text is in English.
- AWS service names use official capitalization.
- Final format is PNG.
- Canvas is vertical, 1080 x 1350, and readable on social media feeds.
