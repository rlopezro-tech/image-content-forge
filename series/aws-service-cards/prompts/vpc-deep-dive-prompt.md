# Amazon VPC - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
- https://docs.aws.amazon.com/vpc/latest/userguide/how-it-works.html
- https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-inventory.html
- https://docs.aws.amazon.com/vpc/latest/userguide/view-vpc-resource-map.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for Amazon VPC.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-Virtual-Private-Cloud_64.svg`

The header accent color must be based on the official icon background color `#8C4FFF`.

## Header

Amazon VPC
Deep Dive

## KEY TAKEAWAYS

- A VPC is a logically isolated network in AWS.
- Subnets live in one Availability Zone.
- Route tables decide where subnet traffic goes.
- Security groups protect resources; network ACLs protect subnets.
- Gateways and endpoints connect VPCs to other networks or AWS services.

## CORE MENTAL MODEL

CIDR block + subnets + route tables + controls -> isolated network path

## WHEN TO USE IT

- Launch EC2, RDS, or load-balanced workloads.
- Separate public and private application tiers.
- Connect AWS to on-premises networks.
- Keep AWS service access private with endpoints.

## WATCH OUT

- Subnet routes decide internet reachability.
- Security groups and network ACLs are different layers.
- NAT gateways enable outbound internet from private subnets.

## SECURITY & OPERATIONS

- Use least-privilege security group rules.
- Review network ACLs for subnet-level traffic.
- Capture IP traffic metadata with VPC Flow Logs.
- Use route tables and resource maps to understand paths.

## KNOWLEDGE CHECK

- Need public web tier -> public subnet plus internet gateway route.
- Need private outbound updates -> private subnet plus NAT gateway path.
- Need private AWS service access -> use VPC endpoints.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in VPC concepts from official AWS docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official VPC icon color `#8C4FFF`.
