# Amazon CloudFront Deep Dive Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowCloudFrontWorks.html
- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-working-with.html
- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html
- https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CacheBehavior.html
- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-signed-urls.html
- https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/georestrictions.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational technical review card for Amazon CloudFront.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official Amazon CloudFront Architecture Icon from the AWS Architecture Icons package.

### Header

Amazon CloudFront

Deep Dive

### KEY TAKEAWAYS

- A distribution is the main CloudFront configuration object.
- Origins provide original content; cache behaviors decide routing and cache policy.
- Edge locations serve cached objects close to viewers.
- Cache keys are shaped by policies for headers, cookies, and query strings.
- Security settings can include HTTPS, AWS WAF, signed URLs, geo restrictions, and origin access control.

### CORE MENTAL MODEL

viewer request + distribution rules + edge cache + origin fetch -> accelerated content delivery

CloudFront is the global front door. Design cache behavior, origin access, headers, TTLs, and security controls deliberately.

### WHEN TO USE IT

- Global websites and applications needing lower latency.
- Static or dynamic content that benefits from caching.
- APIs that need edge routing and protection.
- Private content delivery with controlled viewer access.

### WATCH OUT

- Cache keys can explode if headers, cookies, or query strings are too broad.
- Origin changes and cache invalidations need deployment awareness.
- S3 origins should use origin access control instead of direct public access.
- Viewer HTTPS, origin protocol, and certificate settings must align.

### SECURITY & OPERATIONS

- Use AWS WAF web ACLs for application-layer protection.
- Use signed URLs or signed cookies for private content.
- Restrict S3 origins with origin access control.
- Use standard logs or real-time logs for viewer activity.
- Use invalidations or versioned filenames when cached content must change quickly.

### KNOWLEDGE CHECK

- Need static website acceleration -> use an S3 origin with CloudFront.
- Need path-specific routing -> configure cache behaviors.
- Need private content -> use signed URLs or signed cookies.
- Need edge request logic -> use CloudFront Functions or Lambda@Edge.

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
