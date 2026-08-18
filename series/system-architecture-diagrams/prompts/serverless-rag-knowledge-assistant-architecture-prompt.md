# Serverless RAG Knowledge Assistant Architecture Diagram Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/bedrock/latest/userguide/kb-how-it-works.html
- https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html
- https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-how.html
- https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions-authorizer.html
- https://docs.aws.amazon.com/lambda/latest/dg/services-apigateway.html
- https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
- https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html
- https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html

## Architecture Context

- Diagram type: Serverless Architecture
- Workload: Serverless RAG knowledge assistant
- Environment: Production runtime
- Region model: Single primary AWS Region
- Account model: Single AWS account
- Primary pattern: Authenticated API that retrieves relevant private knowledge and generates a grounded answer with Amazon Bedrock

## Assumptions

- Approved documents are uploaded to Amazon S3 as the knowledge source.
- Amazon Bedrock Knowledge Bases manages ingestion, chunking, embeddings, vector retrieval, and retrieved context for the application.
- The application uses the Bedrock RetrieveAndGenerate runtime path to retrieve relevant content and generate an answer with citations.
- Amazon API Gateway exposes the query API and invokes AWS Lambda.
- Amazon Cognito authenticates application users before query access.
- Amazon Bedrock Guardrails evaluates user input and model responses where the use case requires content, topic, or sensitive-information controls.
- IAM roles enforce least-privilege access between API Gateway, Lambda, S3, Bedrock, and CloudWatch.
- CI/CD, repositories, build services, deployment paths, and container registries are intentionally omitted.

## Image Generation Prompt

Create one complete AWS production-runtime architecture diagram for a serverless RAG knowledge assistant.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use official AWS Architecture Icons for every AWS service shown.

### Required Boundaries

- External users and document administrators.
- AWS Cloud production account.
- Single AWS Region.
- Document ingestion and knowledge layer.
- Authenticated query and generation layer.
- Security and observability layer.

### Runtime Flow

1. An administrator uploads approved documents to Amazon S3.
2. Amazon Bedrock Knowledge Bases ingests the data, creates embeddings, and maintains the knowledge index.
3. An authenticated user sends a question to Amazon API Gateway.
4. API Gateway invokes AWS Lambda after Amazon Cognito authentication.
5. Lambda calls Amazon Bedrock Knowledge Bases to retrieve relevant context and generate a response.
6. Amazon Bedrock Guardrails evaluates the request and response when configured.
7. The answer and citations return through Lambda and API Gateway to the user.

### Data Flow

- Amazon S3 stores source documents.
- Amazon Bedrock Knowledge Bases owns the retrieval workflow and managed vector search path.
- RetrieveAndGenerate combines retrieved context with a foundation model to produce a grounded answer.
- Source citations are returned with the generated response when available.

### Security And Identity

- Amazon Cognito authenticates users.
- IAM roles grant least-privilege permissions to Lambda and Bedrock.
- S3 bucket access is private and restricted to the ingestion role.
- Bedrock Guardrails can filter harmful content, denied topics, prompt attacks, and sensitive information according to configuration.

### Observability And Audit

- CloudWatch receives Lambda logs, API metrics, latency, errors, and alarms.
- Observability flows are shown as dotted lines.

### Services To Show

- Amazon S3
- Amazon Bedrock Knowledge Bases
- Amazon API Gateway
- AWS Lambda
- Amazon Cognito
- Amazon Bedrock
- Amazon Bedrock Guardrails
- AWS Identity and Access Management
- Amazon CloudWatch
- External user
- Document administrator

### Visual Style

Use the same bright, polished AWS technical diagram style as the system architecture series: light neutral canvas, compact glass-like header, official AWS icons, thin boundaries, homologated component nodes, short English labels, subtle shadows, and clear solid, dashed, and dotted flows. Keep the single image useful for interview study without adding paragraphs, decorative filler, CI/CD, or unrelated services.

### Line Legend

- Solid arrow: synchronous request or direct invocation.
- Dashed arrow: ingestion, retrieval, or data flow.
- Dotted arrow: logs, metrics, traces, or audit.

## Accuracy Checklist

- Exactly one final PNG is produced.
- AWS services and integrations are confirmed from official AWS sources.
- Official AWS Architecture Icons are used where available.
- The diagram distinguishes document ingestion from user query-time retrieval.
- The vector search implementation is represented as part of Amazon Bedrock Knowledge Bases, not as an invented request router.
- Guardrails and IAM are shown as controls, not as primary data-path hops.
- No document, prompt, or response text overflows its container.
- No CI/CD, build, repository, deployment, or registry services are visible.
- Final canvas is vertical 1080 x 1350 for LinkedIn publishing.
