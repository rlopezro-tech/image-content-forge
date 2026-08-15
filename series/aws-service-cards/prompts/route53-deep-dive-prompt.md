# Amazon Route 53 - Deep Dive Card Prompt

Create a 1080 x 1350 vertical PNG card for **Amazon Route 53 - Deep Dive**.

Use only official AWS sources:

- https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/Welcome.html
- https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/route-53-concepts.html
- https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html
- https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/CreatingHostedZone.html
- https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-routing-traffic-to-resources.html
- https://aws.amazon.com/route53/
- https://aws.amazon.com/architecture/icons/

Visible card text must be in English.

## Card Content

Header:

- Amazon Route 53
- Deep Dive

Key Takeaways:

- Route 53 provides authoritative DNS for public domains and private VPC domains.
- Hosted zones contain DNS records for a domain and its subdomains.
- Records map names to values, aliases, or AWS resources.
- Routing policies control how Route 53 answers DNS queries.
- Health checks can support failover decisions.

Core Mental Model:

- domain name + hosted zone + record + routing policy -> DNS answer to a target resource

When To Use It:

- Host DNS for internet-facing domains.
- Register or transfer domain names.
- Route traffic to AWS resources with alias records.
- Create private DNS names inside VPCs.

Watch Out:

- DNS changes depend on TTL and resolver caching.
- Public and private hosted zones solve different problems.
- Routing policies do not replace application-level load balancing.
- Domain delegation requires correct name servers at the registrar.

Security & Operations:

- Use IAM least privilege for hosted zone and record changes.
- Monitor health checks and DNS query behavior where needed.
- Protect critical hosted zones with controlled change processes.
- Use private hosted zones for internal VPC name resolution.

Knowledge Check:

- Need DNS for example.com -> create a public hosted zone and delegate name servers.
- Need internal app.local names -> create a private hosted zone associated with VPCs.
- Need active-passive DNS -> use failover routing with health checks.

