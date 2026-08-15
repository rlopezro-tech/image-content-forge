# Elastic Load Balancing Overview Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html
- https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html
- https://docs.aws.amazon.com/elasticloadbalancing/latest/network/introduction.html
- https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/introduction.html
- https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic card for Elastic Load Balancing.

Use case: productivity-visual.
Asset type: 1080 x 1350 px PNG social media carousel card.
Card type: Overview.
Visible language: English only.
Use official AWS Architecture Icons where possible, especially Elastic Load Balancing, Amazon EC2, AWS Auto Scaling, Amazon ECS, Amazon EKS, AWS Lambda, and Amazon CloudWatch.

### Header

Elastic Load Balancing
Overview

Header content only: official Elastic Load Balancing icon from `shared/assets/aws-icons/Arch_Elastic-Load-Balancing_64.svg` in a polished square tile, service name, and card type badge. Preserve the official icon colors exactly. Use the current light/glass header with a softened Elastic Load Balancing violet accent. Do not use the old dark navy header treatment. Do not add descriptions inside the header.

### Service Focus

Title: SERVICE FOCUS
Main line: Distribute traffic across healthy targets.
Body: Elastic Load Balancing automatically distributes incoming application or network traffic across targets such as EC2 instances, containers, IP addresses, and Lambda functions.

### What Is It?

Title: WHAT IS IT?
Body: A managed load balancing service that receives client requests through listeners, evaluates rules, checks target health, and routes traffic to target groups.

### How It Works

Title: HOW IT WORKS
Use a connected 5-step workflow:

1. Client
   Sends traffic to the load balancer DNS name.
2. Listener
   Accepts requests on a protocol and port.
3. Rules
   Match host, path, headers, or routing conditions.
4. Target Group
   Contains registered targets and health checks.
5. Targets
   Receives traffic only when healthy.

### Integrates With

- Amazon EC2: instances
- Amazon ECS/EKS: containers
- AWS Lambda: serverless targets
- CloudWatch: metrics and logs

### Benefits

- AVAILABLE: Routes around unhealthy targets.
- SCALABLE: Handles changing traffic levels.
- FLEXIBLE: ALB, NLB, GWLB, and Classic options.
- OBSERVABLE: Health checks and metrics.

### Common Use Cases

- Web applications
- APIs
- Microservices
- Hybrid routing

### Quality Rules

All visible text must be readable on mobile. Keep total visible words around 70-90. Preserve natural proportions. Use official AWS service names and capitalization. Do not include unsupported claims, pricing promises, or source footers.
