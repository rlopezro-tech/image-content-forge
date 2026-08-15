# Amazon EC2 Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts.html
- https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Instances.html
- https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html
- https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html
- https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-iam.html
- https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic card for Amazon EC2.

Use case: productivity-visual.
Asset type: 1080 x 1350 px PNG social media carousel card.
Card type: Deep Dive.
Visible language: English only.
Use official AWS Architecture Icons where possible, especially Amazon EC2, Amazon VPC, Amazon EBS, AWS IAM, Elastic Load Balancing, and Amazon CloudWatch.

### Header

Amazon EC2
Deep Dive

Header content only: official Amazon EC2 icon from `shared/assets/aws-icons/Arch_Amazon-EC2_64.svg` in a polished square tile, service name, and card type badge. Preserve the official icon colors exactly. Use the current light/glass header with a softened Amazon EC2 orange accent. Do not use the old dark navy header treatment. Do not add descriptions inside the header.

### Key Takeaways

- Instances are virtual servers launched from AMIs.
- Instance type defines compute, memory, network, and storage capacity.
- Security groups act as instance-level virtual firewalls.
- EBS volumes provide persistent block storage.
- Lifecycle state and scaling choices affect availability and cost.

### Core Mental Model

AMI + instance type + VPC security + EBS -> running compute capacity

### When To Use It

- Run applications that need server-level control.
- Migrate existing workloads to AWS infrastructure.
- Use custom operating systems or runtime stacks.
- Attach persistent disks and private networking.

### Watch Out

- Public inbound access should be deliberate.
- Instance sizing affects performance and spend.
- Instance store data is temporary.

### Security & Operations

- Use IAM roles instead of long-term credentials on instances.
- Restrict inbound rules with security groups.
- Encrypt EBS volumes when data protection requires it.
- Monitor health, metrics, and logs with CloudWatch.

### Knowledge Check

- Need login access -> use key pairs or Systems Manager.
- Need inbound web traffic -> allow it in security groups.
- Need persistent disk -> attach Amazon EBS.

### Quality Rules

All visible text must be readable on mobile. Keep total visible words around 110-140. Preserve natural proportions: no stretched typography, oval circles, warped icons, or distorted square tiles. Use official AWS service names and capitalization. Do not include unsupported claims, pricing promises, or source footers.
