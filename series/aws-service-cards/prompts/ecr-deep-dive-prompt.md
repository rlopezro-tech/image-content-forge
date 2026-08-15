# Amazon ECR Deep Dive Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AmazonECR/latest/userguide/what-is-ecr.html
- https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html
- https://docs.aws.amazon.com/AmazonECR/latest/userguide/images.html
- https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html
- https://docs.aws.amazon.com/AmazonECR/latest/userguide/replication.html
- https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational technical review card for Amazon Elastic Container Registry.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official Amazon ECR Architecture Icon from the AWS Architecture Icons package.

### Header

Amazon ECR

Deep Dive

### KEY TAKEAWAYS

- ECR is a registry for container images and OCI artifacts, not a build system.
- Repositories organize images and can use namespaces for teams or apps.
- IAM and repository policies control who can push, pull, describe, or delete images.
- Lifecycle policies expire or archive images based on rule criteria.
- Replication and pull-through cache help distribute and mirror image sources.

### CORE MENTAL MODEL

image build + authenticated push + repository policy + image consumers -> controlled container supply chain

ECR stores versioned artifacts. Deployment services consume immutable image digests or tags according to access, scan, lifecycle, and replication rules.

### WHEN TO USE IT

- Private container images for AWS workloads.
- Teams that need IAM-controlled image sharing.
- ECS, EKS, or Lambda deployments using container images.
- Registries that need lifecycle cleanup, scanning, replication, or pull-through cache.

### WATCH OUT

- Image tags can move unless tag immutability is enabled.
- Lifecycle policies can remove images needed by rollback workflows.
- Cross-account and cross-Region use needs explicit permission and replication design.
- Pull-through cache still depends on upstream registry behavior and IAM setup.

### SECURITY & OPERATIONS

- Grant least-privilege IAM and repository permissions.
- Enable image scanning where vulnerability visibility is required.
- Use lifecycle policies to control stale image storage.
- Use replication for multi-Region or cross-account deployment patterns.
- Prefer image digests for deterministic deployments.

### KNOWLEDGE CHECK

- Need to store app images -> create an ECR private repository.
- Need ECS or EKS deployment -> reference the ECR image URI.
- Need cleanup of old tags -> use lifecycle policies.
- Need global deployment -> configure private image replication.

### Visual Style

Use a clean AWS-inspired technical study-card style with a bright canvas, compact panels, official icon treatment, high contrast, and no visible source footer.

### Source Note

Do not include source URLs or a visible Sources footer in the PNG.

## Accuracy Checklist

- Claims are confirmed by official AWS documentation.
- Deep Dive card does not duplicate the Overview workflow.
- All visible text is in English.
- AWS service names use official capitalization.
- Final format is PNG.
- Canvas is vertical, 1080 x 1350, and readable on social media feeds.
