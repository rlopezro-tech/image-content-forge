# Amazon S3 Deep Dive Card Prompt

## Official AWS Sources

- https://aws.amazon.com/s3/
- https://aws.amazon.com/s3/getting-started/
- https://aws.amazon.com/s3/security/
- https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingObjects.html
- https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html
- https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html
- https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-configure-notification.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic card for Amazon S3.

Use case: productivity-visual.
Asset type: 1080 x 1350 px PNG social media carousel card.
Card type: Deep Dive.
Visible language: English only.
Use official AWS Architecture Icons where possible, especially Amazon S3, IAM, AWS KMS, AWS Lambda, Amazon CloudFront, and Amazon CloudWatch.

### Header

Amazon S3
Deep Dive

Header content only: official Amazon S3 icon from `shared/assets/aws-icons/Arch_Amazon-Simple-Storage-Service_64.svg` in a polished square tile, service name, and card type badge. Preserve the official icon colors exactly. Use the current light/glass header with a softened Amazon S3 green accent. Do not use the old dark navy header treatment. Do not add descriptions inside the header.

### Key Takeaways

- Buckets are regional containers for objects.
- Object keys identify data inside a bucket.
- IAM, bucket policies, and Block Public Access shape access.
- Storage classes and Lifecycle optimize cost.
- Versioning, replication, and Object Lock support protection.

### Core Mental Model

Bucket + object key + metadata + policy -> durable object storage

### When To Use It

- Store files, media, logs, and backups.
- Build data lakes and analytics landing zones.
- Serve static assets through CloudFront.
- Decouple producers and consumers with events.

### Watch Out

- Public access should be deliberate and reviewed.
- Prefix design affects listing and organization.
- KMS-encrypted objects require key permissions.

### Security & Operations

- Enable Block Public Access unless public access is required.
- Use IAM and bucket policies for least privilege.
- Default encryption protects new uploads.
- Monitor access with logs, CloudTrail, and Storage Lens.

### Knowledge Check

- Need private storage -> keep Block Public Access enabled.
- Need cheaper old data -> use Lifecycle transitions.
- Need object history -> enable S3 Versioning.

### Quality Rules

Use the same AWS series visual system as the CodeBuild cards. Final PNG must be exactly 1080 x 1350 px. No source footer, URLs, citation block, bottom banner, closing stripe, or empty bottom spacer.
