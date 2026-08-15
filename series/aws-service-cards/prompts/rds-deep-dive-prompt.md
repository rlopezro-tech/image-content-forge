# Amazon RDS Deep Dive Card Prompt

## Official AWS Sources

- https://aws.amazon.com/rds/
- https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html
- https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
- https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html
- https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html
- https://aws.amazon.com/rds/features/security/
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic card for Amazon RDS.

Use case: productivity-visual.
Asset type: 1080 x 1350 px PNG social media carousel card.
Card type: Deep Dive.
Visible language: English only.

### Header

Amazon RDS
Deep Dive

Header content only: official Amazon RDS icon from `shared/assets/aws-icons/Arch_Amazon-RDS_64.svg` in a polished square tile, service name, and card type badge. Preserve the official icon colors exactly. Use the current light/glass header with a softened Amazon RDS magenta-violet accent. Do not use the old dark navy header treatment. Do not add descriptions inside the header.

### Key Takeaways

- DB instances are the core compute and storage unit.
- RDS supports multiple relational database engines.
- Multi-AZ provides redundancy and failover support.
- Read replicas can help scale read traffic.
- Backups, snapshots, patching, and monitoring are managed features.

### Core Mental Model

Engine + DB instance + VPC controls + managed operations -> production relational database

### When To Use It

- Run relational workloads without self-managing servers.
- Use familiar SQL engines in AWS.
- Need automated backups and recovery.
- Add availability with Multi-AZ deployments.

### Watch Out

- Engine choice affects features and limits.
- Security groups control database reachability.
- Scaling often needs planned instance or storage changes.

### Security & Operations

- Place DB instances in a VPC.
- Restrict inbound access with security groups.
- Use AWS KMS for encryption at rest.
- Monitor with CloudWatch, logs, events, and Enhanced Monitoring.

### Knowledge Check

- Need failover support -> use Multi-AZ.
- Need read scaling -> evaluate read replicas.
- Need recovery point -> enable automated backups.

### Quality Rules

Use the AWS series visual system. Final PNG must be exactly 1080 x 1350 px. No source footer, URLs, citation block, bottom banner, closing stripe, or empty bottom spacer.
