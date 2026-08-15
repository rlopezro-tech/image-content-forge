# Elastic Load Balancing Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html
- https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html
- https://docs.aws.amazon.com/elasticloadbalancing/latest/network/introduction.html
- https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/introduction.html
- https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html
- https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-access-logs.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic card for Elastic Load Balancing.

Use case: productivity-visual.
Asset type: 1080 x 1350 px PNG social media carousel card.
Card type: Deep Dive.
Visible language: English only.
Use official AWS Architecture Icons where possible, especially Elastic Load Balancing, Amazon EC2, AWS Auto Scaling, Amazon ECS, Amazon EKS, AWS Lambda, and Amazon CloudWatch.

### Header

Elastic Load Balancing
Deep Dive

Header content only: official Elastic Load Balancing icon from `shared/assets/aws-icons/Arch_Elastic-Load-Balancing_64.svg` in a polished square tile, service name, and card type badge. Preserve the official icon colors exactly. Use the current light/glass header with a softened Elastic Load Balancing violet accent. Do not use the old dark navy header treatment. Do not add descriptions inside the header.

### Key Takeaways

- Load balancers route traffic to registered target groups.
- Health checks decide which targets receive traffic.
- ALB handles HTTP and HTTPS application routing.
- NLB handles high-performance TCP, UDP, and TLS traffic.
- GWLB routes traffic through virtual appliances.

### Core Mental Model

listener + rules + target group + health checks -> resilient traffic routing

### When To Use It

- Expose applications across multiple targets.
- Route HTTP traffic by host, path, or headers.
- Balance TCP or UDP workloads at network level.
- Insert security appliances into traffic paths.

### Watch Out

- Unhealthy targets stop receiving normal traffic.
- Security groups and target ports must align.
- Cross-zone, TLS, and logging settings matter.

### Security & Operations

- Use TLS listeners and managed certificates where appropriate.
- Monitor target health, latency, and error metrics.
- Enable access logs for request-level analysis.
- Place targets across Availability Zones for resilience.

### Knowledge Check

- Need path routing -> use Application Load Balancer.
- Need TCP or UDP -> use Network Load Balancer.
- Need appliance insertion -> use Gateway Load Balancer.

### Quality Rules

All visible text must be readable on mobile. Keep total visible words around 110-140. Preserve natural proportions. Use official AWS service names and capitalization. Do not include source footers.
