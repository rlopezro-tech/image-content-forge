# Amazon DocumentDB - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/documentdb/latest/devguide/what-is.html
- https://docs.aws.amazon.com/documentdb/latest/devguide/how-it-works.html
- https://docs.aws.amazon.com/documentdb/latest/devguide/db-clusters-understanding.html
- https://docs.aws.amazon.com/documentdb/latest/devguide/global-clusters.html
- https://docs.aws.amazon.com/documentdb/latest/devguide/elastic-how-it-works.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for Amazon DocumentDB.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-DocumentDB_64.svg`

The header accent color must be based on the official database category icon color `#C925D1`.

## Header

Amazon DocumentDB
Deep Dive

## KEY TAKEAWAYS

- A cluster has one primary instance and up to 15 replicas.
- Writes go through the primary instance.
- Replicas serve reads and share the same cluster volume.
- Storage is replicated six ways across three Availability Zones.
- Automated backups support point-in-time recovery.

## CORE MENTAL MODEL

MongoDB-compatible app + primary instance + cluster volume -> replicas and endpoints

## WHEN TO USE IT

- Run document workloads with MongoDB-compatible drivers.
- Need managed backups, monitoring, patching, and failover.
- Scale read traffic with replica instances.
- Use global clusters for cross-Region disaster recovery.

## WATCH OUT

- Compatibility does not mean every MongoDB API is supported.
- Writes are handled by the primary instance.
- Replicas are eventually consistent with minimal lag.
- DocumentDB instances run in an Amazon VPC.

## SECURITY & OPERATIONS

- Use VPC security groups to control network access.
- Use TLS for client connections.
- Use AWS KMS for encryption at rest.
- Monitor cluster health and replication lag in CloudWatch.

## KNOWLEDGE CHECK

- Need write endpoint -> use the cluster endpoint.
- Need read scaling -> add replicas and use the reader endpoint.
- Need recovery window -> use automated backups and snapshots.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official DocumentDB docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official database icon color `#C925D1`.
