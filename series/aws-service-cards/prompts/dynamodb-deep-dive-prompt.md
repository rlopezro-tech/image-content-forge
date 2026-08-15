# Amazon DynamoDB Deep Dive Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-partition-key-design.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/SecondaryIndexes.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html
- https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Monitoring.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical review card for Amazon DynamoDB.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official AWS Architecture Icon: `Arch_Amazon-DynamoDB_64.svg`.

### Header

Amazon DynamoDB

Deep Dive

### Key Takeaways

- Design from access patterns, not relational joins.
- Primary keys drive item placement and efficient reads.
- GSIs support alternate query patterns across the table.
- Streams capture item-level changes for event-driven workflows.
- Global tables replicate data across selected AWS Regions.

### Core Mental Model

Access pattern + primary key + item collection + optional indexes -> predictable low-latency reads and writes.

### When To Use It

- High-scale key-value or document workloads.
- Serverless applications that need managed operations.
- User sessions, carts, profiles, game state, and IoT metadata.
- Event-driven systems using streams and Lambda.

### Watch Out

- Poor partition key design can create hot partitions.
- Scan-heavy access patterns are expensive and inefficient.
- DynamoDB does not support relational joins.
- GSI capacity and projections must match query needs.

### Security & Operations

- Use IAM policies and encryption at rest.
- Use CloudWatch metrics and alarms for capacity and throttling.
- Use backups, point-in-time recovery, and global tables when required.
- Use TTL for automatic item expiration where appropriate.

### Knowledge Check

- Need alternate query key -> add a secondary index.
- Need item change events -> enable DynamoDB Streams.
- Need multi-Region active-active -> use global tables.

### Visual Style

Use a clean AWS-inspired technical study card with bright canvas, refined panels, official AWS icon, dense but readable layout, thin borders, subtle shadows, and no visible source URLs.

## Accuracy Checklist

- Technical takeaways are confirmed by official AWS documentation.
- Watch-outs reflect documented DynamoDB data modeling and operational behavior.
- Integrations and operational controls are confirmed by AWS documentation.
- All visible text is in English.
- Final format is PNG.
