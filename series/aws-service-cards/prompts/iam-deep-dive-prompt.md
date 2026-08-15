# AWS IAM Deep Dive Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html
- https://docs.aws.amazon.com/IAM/latest/UserGuide/access_controlling.html
- https://docs.aws.amazon.com/IAM/latest/UserGuide/intro-structure.html
- https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction_identity-management.html
- https://docs.aws.amazon.com/IAM/latest/UserGuide/gs-identities-mfa.html
- https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational technical review card for AWS Identity and Access Management.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official AWS Identity and Access Management Architecture Icon from the AWS Architecture Icons package.

### Header

AWS IAM

Deep Dive

### KEY TAKEAWAYS

- IAM decides authorization after a principal is authenticated.
- Policies define permissions and are commonly JSON documents.
- Explicit deny overrides allow.
- Roles provide temporary credentials and are preferred for workloads and federation.
- Access Analyzer helps validate policies and identify unintended or unused access.

### CORE MENTAL MODEL

principal + action + resource + conditions + applicable policies -> allow or deny

IAM authorization is policy evaluation. Design who can request what, against which resources, under which conditions.

### WHEN TO USE IT

- Grant users, applications, and AWS services controlled access.
- Delegate access across accounts with roles.
- Replace long-term credentials with temporary credentials.
- Validate policies and reduce broad permissions.

### WATCH OUT

- New IAM users start with no permissions.
- Root user should not be used for everyday administrative tasks.
- Groups grant permissions to users, but groups are not principals.
- Trust policies and permission policies solve different role problems.

### SECURITY & OPERATIONS

- Enforce multi-factor authentication for sensitive access.
- Apply least privilege and avoid broad wildcard permissions.
- Use IAM roles for applications and cross-account access.
- Validate and review policies with IAM Access Analyzer.
- Monitor IAM and API activity with AWS CloudTrail.

### KNOWLEDGE CHECK

- Need AWS service access from EC2 -> use an IAM role and instance profile.
- Need cross-account access -> create a role with a trust policy.
- Need temporary credentials -> use AWS STS role sessions.
- Need policy review -> use IAM Access Analyzer.

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
