# Amazon CloudFront Overview Prompt

## Official AWS Sources

- https://aws.amazon.com/cloudfront/
- https://aws.amazon.com/documentation-overview/cloudfront/
- https://docs.aws.amazon.com/cloudfront/
- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowCloudFrontWorks.html
- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-working-with.html
- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/GettingStarted.SimpleDistribution.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational infographic for Amazon CloudFront.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official Amazon CloudFront Architecture Icon from the AWS Architecture Icons package.

### Header

Amazon CloudFront

Overview

### Service Focus

Deliver web content, APIs, and media through AWS edge locations.

Amazon CloudFront is a content delivery network service designed to deliver data, videos, applications, and APIs globally with low latency and high transfer speeds.

### WHAT IS IT?

Amazon CloudFront speeds up delivery of static and dynamic web content through a worldwide network of edge locations. CloudFront uses distributions, origins, cache behaviors, and security settings to control how viewer requests are routed and cached.

### HOW IT WORKS

1. Viewer request: A user requests content through a CloudFront domain or alternate domain name.
2. Edge routing: DNS routes the request to a CloudFront edge location.
3. Cache check: CloudFront returns cached content when available.
4. Origin fetch: On a cache miss, CloudFront requests the object from the configured origin.
5. Response and cache: CloudFront returns the response and caches it according to policy.

### INTEGRATES WITH

- Amazon S3: Static content origin with origin access control.
- Elastic Load Balancing: Application and service origins.
- Amazon EC2: Custom HTTP origin workloads.
- AWS WAF: Web ACL protection for distributions.
- AWS Shield: DDoS protection at the edge.
- Route 53: DNS routing for custom domains.
- CloudFront Functions: Lightweight edge request logic.

### BENEFITS

- LOW LATENCY: Serve content from globally distributed edge locations.
- SECURE: Use HTTPS, AWS WAF, Shield, signed URLs, and origin access controls.
- CACHEABLE: Cache static and dynamic content with cache policies.
- PROGRAMMABLE EDGE: Customize requests with CloudFront Functions or Lambda@Edge.

### COMMON USE CASES

- Static websites
- API acceleration
- Video delivery
- Software downloads
- Secure private content
- Global web apps

### Visual Style

Use a clean AWS-inspired technical infographic style with a bright canvas, polished typography, thin borders, subtle shadows, official AWS icon treatment, and compact engineering-focused panels.

### Source Note

Do not include source URLs or a visible Sources footer in the PNG.

## Accuracy Checklist

- Service definition is confirmed by official AWS documentation.
- Workflow steps match Amazon CloudFront documentation.
- Integrations are confirmed by official AWS documentation.
- Benefits are supported by official AWS documentation.
- All visible text is in English.
- AWS service names use official capitalization.
- Final format is PNG.
- Canvas is vertical, 1080 x 1350, and readable on social media feeds.
