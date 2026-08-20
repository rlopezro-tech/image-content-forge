# Ecommerce Microservices Payments Architecture Diagram Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html
- https://docs.aws.amazon.com/AmazonECS/latest/developerguide/alb.html
- https://docs.aws.amazon.com/lambda/latest/dg/services-apigateway.html
- https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-integrations.html
- https://docs.aws.amazon.com/en_us/prescriptive-guidance/latest/patterns/integrate-amazon-api-gateway-with-amazon-sqs-to-handle-asynchronous-rest-apis.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-targets.html
- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/getting-started-secure-static-website-cloudformation-template.html
- https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html

## Architecture Context

- Diagram type: Runtime Architecture
- Workload: Ecommerce microservices with payment methods
- Environment: Production runtime
- Region model: Single primary AWS Region, multi-AZ VPC
- Account model: Single AWS account
- Primary pattern: Containerized microservices with asynchronous order/payment events

## Assumptions

- The ecommerce web frontend is a static SPA served through Amazon CloudFront from Amazon S3.
- Public API traffic enters through Amazon API Gateway and an Application Load Balancer.
- Core business services run as Amazon ECS services on AWS Fargate in private subnets.
- Payment provider integration is external and uses tokenized payment methods; card data is not stored in the AWS workload.
- Payment webhooks are handled by AWS Lambda behind API Gateway.
- Orders and payments emit events to Amazon EventBridge and queue work through Amazon SQS.
- Product catalog data uses Amazon DynamoDB; orders and payments use Amazon RDS.
- Secrets Manager stores external payment provider API keys and database credentials.
- Amazon CloudWatch collects logs, metrics, and alarms.

## Image Generation Prompt

Create a complete AWS architecture diagram for an ecommerce application with microservices and payment methods.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use official AWS Architecture Icons for all AWS services.

### Required Boundaries

- External users and external payment provider outside AWS.
- AWS Cloud boundary.
- Single production AWS account.
- Single AWS Region.
- VPC boundary with public and private subnet areas.
- Edge/API layer.
- Private microservices layer.
- Event and queue layer.
- Data layer.
- Security and operations support layer.

### Runtime Flow

1. Shopper uses browser or mobile app.
2. DNS resolves through Amazon Route 53.
3. Static frontend is served by Amazon CloudFront from Amazon S3.
4. Frontend calls Amazon API Gateway for ecommerce APIs.
5. API Gateway forwards public API traffic to an Application Load Balancer.
6. Application Load Balancer routes requests to Amazon ECS services on AWS Fargate.
7. Services include Catalog, Cart, Checkout, Orders, Payments, Inventory, and Notifications.
8. Synchronous service requests use solid arrows.
9. Order-created, payment-requested, payment-confirmed, and inventory-updated events go to Amazon EventBridge.
10. Long-running or retryable work goes through Amazon SQS.
11. Payment service calls the external payment provider over HTTPS.
12. Payment provider webhooks enter through API Gateway and invoke AWS Lambda.
13. Lambda validates payment callbacks and publishes payment events.

### Data Flow

- Catalog service reads and writes product data in Amazon DynamoDB.
- Orders and Payments services read and write transactional data in Amazon RDS.
- Static web assets are stored in Amazon S3.
- SQS queues buffer asynchronous work for payment confirmation, inventory reservation, and notifications.

### Security And Identity

- IAM roles grant least-privilege permissions between ECS tasks, Lambda, EventBridge, SQS, data stores, and Secrets Manager.
- AWS Secrets Manager stores payment provider API keys and database credentials.
- Payment details are tokenized by the external payment provider; raw card data is not stored in AWS.
- Databases and private services are inside private subnets.

### Observability And Audit

- Amazon CloudWatch receives application logs, service metrics, queue depth metrics, alarms, and dashboards.
- Dotted arrows represent logs and metrics.

### Services To Show

- Amazon Route 53
- Amazon CloudFront
- Amazon S3
- Amazon API Gateway
- Elastic Load Balancing / Application Load Balancer
- Amazon ECS
- AWS Fargate
- Amazon EventBridge
- Amazon SQS
- AWS Lambda
- Amazon DynamoDB
- Amazon RDS
- AWS Secrets Manager
- AWS Identity and Access Management
- Amazon CloudWatch
- External Payment Provider

### Visual Style

Use a clean AWS-inspired technical architecture style with a bright neutral background, official AWS icons, thin boundaries, subtle shadows, and titled rounded rectangular section panels. Group the Edge/API, Private Microservices, Events and Queues, Data, and Security/Operations areas before placing their nodes. Keep equal-role nodes aligned, preserve internal panel padding, and route arrows through clear gaps between panels. Keep the diagram polished, dense enough to be useful, and easy to scan.

### Line Legend

- Solid arrow: synchronous request or direct invocation.
- Dashed arrow: asynchronous event or queue/message flow.
- Dotted arrow: logs, metrics, traces, audit, or monitoring.

## Accuracy Checklist

- AWS services and integrations are confirmed from official AWS sources.
- AWS service names use official capitalization.
- Official AWS Architecture Icons are used when available.
- Network boundaries are realistic.
- Public and private layers are not confused.
- Data stores are not directly exposed to the internet.
- IAM and Secrets Manager are shown as security controls, not request routers.
- Observability flows are visually distinct from runtime traffic.
- Major functional groups are enclosed in titled rectangular section panels.
- Every service node has a clear owning section and panels have consistent gutters and padding.
- Async flows are visually distinct from synchronous flows.
- All visible text is in English.
- Final output is PNG.
- Final canvas is vertical 1080 x 1350 for LinkedIn publishing.
- CI/CD, deployment, repository, build, and container registry services are intentionally omitted.
