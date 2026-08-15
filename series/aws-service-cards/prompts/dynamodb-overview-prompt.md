# Amazon DynamoDB Overview Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GettingStartedDynamoDB.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBMapper.QueryScanExample.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic for Amazon DynamoDB.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official AWS Architecture Icon: `Arch_Amazon-DynamoDB_64.svg`.

### Header

Amazon DynamoDB

Overview

### Service Focus

Serverless NoSQL database for high-scale applications. DynamoDB stores key-value and document data in tables with single-digit millisecond performance at any scale.

### What Is It?

Amazon DynamoDB is a fully managed, serverless, distributed NoSQL database service. It uses tables, items, attributes, and primary keys to model application data without managing servers.

### How It Works

1. Model access patterns: design keys around the queries the application needs.
2. Create table: choose a partition key and optional sort key.
3. Write items: store flexible attributes as key-value or document data.
4. Query data: use primary keys and secondary indexes for alternate access patterns.
5. Extend changes: use streams, TTL, backups, global tables, and integrations.

### Integrates With

- AWS Lambda: event processing from DynamoDB Streams.
- Amazon API Gateway: REST APIs backed by DynamoDB data.
- AWS AppSync: GraphQL APIs for application data.
- Amazon S3: table import and export for analytics workflows.

### Benefits

- SERVERLESS: no servers, versions, or maintenance windows.
- SCALABLE: handles tables of virtually any size.
- LOW LATENCY: single-digit millisecond performance at scale.
- RESILIENT: backups, global tables, and managed availability features.

### Common Use Cases

- User profiles
- Shopping carts
- Game state
- IoT metadata

### Visual Style

Use a clean AWS-inspired technical infographic style with a bright neutral canvas, refined panels, official AWS icon, thin borders, subtle shadows, strong mobile readability, and a full-width 1080 x 1350 composition.

## Accuracy Checklist

- Service definition is confirmed by official AWS documentation.
- Workflow steps match official AWS documentation.
- Integrations are confirmed by official AWS documentation.
- Benefits are supported by official AWS documentation.
- Use cases are realistic and AWS-aligned.
- All visible text is in English.
- AWS service names use official capitalization.
- Final format is PNG.
