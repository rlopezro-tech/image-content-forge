# Amazon Aurora - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.html
- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Endpoints.html
- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Endpoints.Cluster.html
- https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html
- https://docs.aws.amazon.com/rds/latest/auroraextendedcontent/aurora-faq.html
- https://aws.amazon.com/rds/aurora/serverless/
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for Amazon Aurora.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-Aurora_64.svg`

The header accent color must be based on the official icon background color `#C925D1`.

## Header

Amazon Aurora
Deep Dive

## KEY TAKEAWAYS

- An Aurora DB cluster has a shared cluster volume.
- The primary DB instance handles writes.
- Aurora Replicas serve read-only traffic and support failover.
- Cluster and reader endpoints abstract instance changes.
- Global Database replicates to secondary Regions for reads and DR.

## CORE MENTAL MODEL

Cluster volume + writer + replicas + endpoints -> managed relational database

## WHEN TO USE IT

- Need MySQL or PostgreSQL compatibility with managed operations.
- Need read scaling through Aurora Replicas.
- Need high availability across Availability Zones.
- Need low-latency global reads or disaster recovery.

## WATCH OUT

- Only the primary instance handles write operations.
- Reader endpoints route read traffic, not writes.
- Global Database secondary clusters are read-only until promoted.
- Instance endpoints require more application-side failover logic.

## SECURITY & OPERATIONS

- Place clusters in a VPC and control access with security groups.
- Store credentials in Secrets Manager where appropriate.
- Monitor database metrics, logs, and events with CloudWatch.
- Plan backups, failover behavior, and endpoint usage before production.

## KNOWLEDGE CHECK

- Need writes or DDL -> use the cluster endpoint.
- Need read scale -> use Aurora Replicas and the reader endpoint.
- Need multi-Region DR -> use Aurora Global Database.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official Aurora docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official Aurora icon color `#C925D1`.
