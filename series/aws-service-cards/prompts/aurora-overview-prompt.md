# Amazon Aurora - Overview Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.html
- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Endpoints.html
- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Endpoints.Cluster.html
- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html
- https://docs.aws.amazon.com/rds/latest/auroraextendedcontent/aurora-faq.html
- https://aws.amazon.com/rds/aurora/
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational card for Amazon Aurora.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-Aurora_64.svg`

The header accent color must be based on the official icon background color `#C925D1`.

## Header

Amazon Aurora
Overview

## SERVICE FOCUS

Run high-performance MySQL- and PostgreSQL-compatible relational databases.

Amazon Aurora separates compute from a distributed, fault-tolerant storage layer and manages clusters, replicas, endpoints, backups, and failover.

## WHAT IS IT?

Amazon Aurora is a fully managed relational database service designed for performance, availability, and compatibility with MySQL and PostgreSQL.

## HOW IT WORKS

1. Create Cluster
   Choose Aurora MySQL or Aurora PostgreSQL and create a DB cluster.

2. Add Instances
   Use one writer and up to 15 Aurora Replicas for read scale and availability.

3. Connect Endpoints
   Writer, reader, instance, or custom endpoints route application traffic.

4. Store Durably
   The cluster volume spans multiple Availability Zones and self-heals.

5. Scale And Recover
   Add readers, use Serverless, back up, fail over, or use Global Database.

## INTEGRATES WITH

- Amazon RDS: cluster management
- Amazon VPC: network isolation
- AWS Secrets Manager: database credentials
- Amazon CloudWatch: metrics and logs

## BENEFITS

- COMPATIBLE: Works with MySQL and PostgreSQL applications.
- AVAILABLE: Multi-AZ storage and replica-based failover.
- SCALABLE: Read replicas and serverless capacity options.
- GLOBAL READY: Global Database supports low-latency reads and DR.

## COMMON USE CASES

- Modern web applications
- SaaS application databases
- Enterprise applications
- Global relational workloads

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Workflow reflects clusters, instances, endpoints, storage, and recovery.
- No visible source footer or URLs in the PNG.
- Header color is based on the official Aurora icon color `#C925D1`.
