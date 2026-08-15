# Amazon EKS Deep Dive Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/eks/latest/userguide/what-is-eks.html
- https://docs.aws.amazon.com/eks/latest/userguide/kubernetes-concepts.html
- https://docs.aws.amazon.com/eks/latest/userguide/eks-compute.html
- https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html
- https://docs.aws.amazon.com/eks/latest/userguide/fargate.html
- https://docs.aws.amazon.com/eks/latest/userguide/security-iam.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational technical review card for Amazon Elastic Kubernetes Service.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official Amazon EKS Architecture Icon from the AWS Architecture Icons package.

### Header

Amazon EKS

Deep Dive

### KEY TAKEAWAYS

- EKS manages the Kubernetes control plane; workloads still need compute capacity.
- Kubernetes manifests describe desired state for pods, services, and controllers.
- Pods can run on Auto Mode, managed node groups, self-managed nodes, Fargate, or hybrid nodes.
- EKS integrates Kubernetes access with AWS IAM and Kubernetes RBAC.
- Add-ons and controllers connect Kubernetes workloads to AWS networking, storage, and observability.

### CORE MENTAL MODEL

Kubernetes API + desired state + compute option + AWS integrations -> managed Kubernetes platform

EKS provides the managed Kubernetes foundation. You still design workloads, networking, identity, scaling, and operational add-ons.

### WHEN TO USE IT

- Teams standardizing on Kubernetes APIs and ecosystem tools.
- Portable workloads that should run with upstream Kubernetes patterns.
- Platforms needing AWS-native identity, networking, storage, and monitoring.
- Microservices requiring Kubernetes scheduling, rollout, and service abstractions.

### WATCH OUT

- EKS is not the same as ECS; Kubernetes objects drive workload behavior.
- Worker compute lifecycle depends on the compute option you choose.
- Cluster access needs both AWS IAM and Kubernetes authorization design.
- Add-ons, ingress controllers, storage drivers, and autoscaling need ownership.

### SECURITY & OPERATIONS

- Use IAM access entries or mapped roles for Kubernetes API access.
- Use IAM roles for service accounts where workloads need AWS API access.
- Monitor cluster and workload logs and metrics with CloudWatch or managed observability tools.
- Keep Kubernetes versions, add-ons, and nodes on supported versions.
- Use VPC networking, security groups, and load balancers deliberately.

### KNOWLEDGE CHECK

- Need managed Kubernetes control plane -> create an EKS cluster.
- Need automatic infrastructure management -> consider EKS Auto Mode.
- Need pod-level serverless compute -> use AWS Fargate profiles.
- Need workload AWS API access -> use IAM roles for service accounts.

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
