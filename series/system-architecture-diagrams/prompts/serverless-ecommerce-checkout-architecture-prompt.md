# Serverless Ecommerce Checkout Architecture Diagram Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/lambda/latest/dg/services-apigateway.html
- https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-dynamo-db.html
- https://docs.aws.amazon.com/lambda/latest/dg/services-sqs-configure.html
- https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-targets.html
- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/getting-started-secure-static-website-cloudformation-template.html
- https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html

## Architecture Context

- Diagram type: Runtime Architecture
- Workload: Serverless ecommerce checkout
- Environment: Production runtime
- Region model: Single primary AWS Region
- Account model: Single AWS account
- Primary pattern: Serverless checkout API with asynchronous order and payment processing

## Assumptions

- The storefront is a static web application delivered through Amazon CloudFront from Amazon S3.
- Shopper checkout requests enter through Amazon API Gateway.
- AWS Lambda functions handle cart validation, checkout creation, payment request, webhook processing, order confirmation, and notification dispatch.
- Amazon DynamoDB stores checkout sessions, orders, carts, idempotency keys, and payment status.
- Amazon EventBridge routes domain events such as `CheckoutCreated`, `PaymentRequested`, `PaymentConfirmed`, and `OrderConfirmed`.
- Amazon SQS buffers retryable asynchronous work for payment confirmation and order finalization.
- Amazon SNS sends customer and operations notifications.
- AWS Secrets Manager stores payment provider credentials.
- Amazon CloudWatch collects runtime logs, metrics, and alarms.
- CI/CD, repositories, build services, deployment paths, and container registries are intentionally omitted.

## Image Generation Prompt

Create a complete AWS production-runtime architecture diagram for a serverless ecommerce checkout flow.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use official AWS Architecture Icons for all AWS services.

### Required Boundaries

- External systems.
- AWS Cloud production account.
- Single AWS Region.
- Edge and public API layer.
- Serverless runtime layer.
- Events, queues, and data layer.
- Security and observability layer.

### Runtime Flow

1. Shopper opens the storefront through Route 53, CloudFront, and S3.
2. Storefront sends checkout requests to API Gateway.
3. API Gateway invokes Lambda checkout functions.
4. Lambda validates cart and writes checkout/order state to DynamoDB.
5. Checkout function publishes domain events to EventBridge.
6. EventBridge routes payment and order events to SQS and downstream Lambda functions.
7. Payment Lambda calls the external payment provider.
8. Payment provider webhooks enter through API Gateway and invoke Lambda.
9. Lambda updates DynamoDB and publishes confirmation events.
10. Notification flow uses SNS for customer or operations messages.

### Data Flow

- DynamoDB stores checkout sessions, carts, orders, payment status, and idempotency records.
- SQS buffers retryable payment and order finalization tasks.
- EventBridge routes checkout, payment, and order events.

### Security And Identity

- IAM roles grant least-privilege access between API Gateway, Lambda, EventBridge, SQS, SNS, DynamoDB, Secrets Manager, and CloudWatch.
- Secrets Manager stores payment provider credentials.
- Raw card data is not stored in AWS; the external provider tokenizes payment methods.

### Observability And Audit

- CloudWatch receives Lambda logs, API metrics, queue depth metrics, alarms, and dashboards.
- Observability flows are shown as dotted lines.

### Services To Show

- Amazon Route 53
- Amazon CloudFront
- Amazon S3
- Amazon API Gateway
- AWS Lambda
- Amazon EventBridge
- Amazon SQS
- Amazon SNS
- Amazon DynamoDB
- AWS Secrets Manager
- AWS Identity and Access Management
- Amazon CloudWatch
- External Payment Provider

### Visual Style

Use a clean professional AWS-inspired technical architecture style with a bright neutral background, official AWS icons, thin boundaries, subtle shadows, clear grouped layers, readable labels, and consistent arrow styles. Keep the diagram polished, restrained, useful, and easy to scan. Do not add decorative filler, marketing copy, framework lists, or services that are not relevant to the runtime architecture.

### Line Legend

- Solid arrow: synchronous request or direct invocation.
- Dashed arrow: asynchronous event or queue/message flow.
- Dotted arrow: logs, metrics, traces, audit, or monitoring.

## Accuracy Checklist

- AWS services and integrations are confirmed from official AWS sources.
- AWS service names use official capitalization.
- Official AWS Architecture Icons are used when available.
- Only relevant production runtime components are visible.
- No decorative filler, marketing copy, or generic framework/technology lists are visible.
- Header follows the same visual standard as the AWS learning cards.
- Component boxes are homologated within each layer.
- Icons are visually centered inside their tiles.
- No visible text overflows its container.
- No visible text overlaps arrows, icons, boundaries, or other text.
- Async flows are visually distinct from synchronous flows.
- Observability flows are visually distinct from runtime traffic.
- Final canvas is vertical 1080 x 1350 for LinkedIn publishing.
- CI/CD, build, artifact, registry, repository, and deployment services are omitted.
