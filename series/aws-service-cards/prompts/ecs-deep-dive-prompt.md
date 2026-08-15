# Amazon ECS Deep Dive Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/Welcome.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/clusters.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service_definition_parameters.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/interconnecting-services.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security_iam_service-with-iam.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational technical review card for Amazon Elastic Container Service.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official Amazon ECS Architecture Icon from the AWS Architecture Icons package.

### Header

Amazon ECS

Deep Dive

### KEY TAKEAWAYS

- ECS is the orchestrator; capacity is provided by Fargate, EC2, Managed Instances, or external resources.
- A task definition is the application blueprint.
- A task is a running copy of a task definition.
- A service maintains the desired number of tasks and replaces failed tasks.
- Capacity providers control how tasks are placed across available capacity.

### CORE MENTAL MODEL

image + task definition + cluster capacity + scheduler -> running container workload

ECS turns a desired container workload into tasks running on selected capacity, then keeps services aligned with the desired state.

### WHEN TO USE IT

- Standardized container orchestration on AWS.
- Long-running stateless services that need desired-count management.
- Workloads that need flexible capacity choices.
- Applications that need AWS-native load balancing, IAM, networking, and observability.

### WATCH OUT

- ECS is not the compute layer; choose capacity deliberately.
- Task definitions, services, and clusters are separate concepts.
- Load balancer target type and network mode must match the capacity model.
- IAM task roles and execution roles solve different permission problems.

### SECURITY & OPERATIONS

- Use least-privilege IAM permissions for users, services, task roles, and execution roles.
- Use CloudWatch for logs, metrics, and alarms.
- Use Elastic Load Balancing for internet-facing service traffic.
- Use Service Connect, service discovery, or VPC Lattice for service-to-service connectivity.
- Use capacity provider strategies for placement across supported capacity.

### KNOWLEDGE CHECK

- Need serverless containers -> run ECS tasks on AWS Fargate.
- Need desired task count -> create an ECS service.
- Need application permissions -> use the task role.
- Need image pull and log permissions -> use the task execution role.

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
