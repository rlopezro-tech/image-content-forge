# AWS Application Architecture Diagram Rules

Use this rule set to generate one complete, real AWS application architecture diagram per publication for LinkedIn. These diagrams are different from the AWS service card series: they must represent an end-to-end application, workload, platform, or system architecture running in production, with accurate AWS service relationships, network boundaries, traffic flows, data flows, security controls, observability, and operational context.

## One Image Per Architecture

Each architecture topic produces exactly one final PNG image. Do not generate a separate generic diagram and AWS diagram for the same topic, and do not split one architecture into Overview and Deep Dive images.

The single image must combine the conceptual system flow, the concrete AWS implementation, the most important production boundaries, and the relevant security, data, asynchronous, and observability relationships. Keep alternatives, trade-offs, and interview discussion points in the Markdown prompt or LinkedIn post, not in additional images.

## Master Prompt

You are an expert AWS solutions architect and technical diagram designer. Create a complete AWS architecture diagram for the application or workload: **{APP_OR_WORKLOAD_NAME}**.

Before writing or designing the diagram, research every AWS service, icon, pattern, integration, and architectural claim directly from official AWS sources only:

- AWS Documentation: `https://docs.aws.amazon.com/`
- AWS service product pages: `https://aws.amazon.com/`
- AWS Architecture Center: `https://aws.amazon.com/architecture/`
- AWS Architecture Icons: `https://aws.amazon.com/architecture/icons/`
- AWS Well-Architected Framework: `https://docs.aws.amazon.com/wellarchitected/`

Do not use blogs, third-party tutorials, community summaries, guessed feature behavior, unsupported integrations, outdated screenshots, or non-official service icons. If a service relationship, traffic pattern, security boundary, or operational feature cannot be confirmed from official AWS sources, leave it out or label it as an assumption outside the final image.

## Required Output Language

All visible text in the final diagram must be in English.

User-facing conversation can remain in the user's language.

## Diagram Goal

The diagram must explain how a real production application runs on AWS.

It should make clear:

- Who or what enters the system.
- Which AWS services receive traffic.
- Which network, account, region, and availability-zone boundaries exist.
- Which services process requests synchronously.
- Which services communicate asynchronously.
- Where data is stored.
- How secrets, identity, access, encryption, and security controls are handled.
- How logs, metrics, alarms, traces, and audit events are collected.
- Which parts are managed services, compute, networking, data, security, integration, and operations.

The final result must be useful for engineers, architects, technical leads, and stakeholders reviewing a real system design.

## Runtime-Only Default

By default, show only the production runtime architecture: user traffic, service-to-service communication, events, queues, data stores, security controls, observability, and external integrations.

Do not include CI/CD, build, test, artifact, deployment, or repository services unless the user explicitly asks for a deployment, delivery, or CI/CD architecture.

Exclude by default:

- AWS CodeBuild
- AWS CodePipeline
- AWS CodeDeploy
- Amazon ECR
- GitHub, GitLab, Bitbucket, or source repositories
- Build artifacts
- Deployment arrows
- Environment promotion flows
- Rollback flows

If a runtime dependency pulls images from Amazon ECR, omit ECR from the visible diagram unless image registry behavior is central to the user's request.

## Relevance Filter

Only include components that materially explain the architecture.

Before placing any visible node, ask:

- Does this component receive traffic, process data, store data, secure the workload, connect systems, or expose an operational signal?
- Would removing it make the architecture meaningfully less accurate?
- Is it part of production runtime rather than implementation detail?
- Can the diagram remain clear with this component included?

If the answer is no, omit it from the PNG.

Omit by default:

- Frameworks and programming languages for general example diagrams.
- Internal implementation details that do not change the architecture.
- Nice-to-have AWS services that are not central to the workload.
- Duplicate services that do not add a new architectural role.
- Decorative notes, generic best-practice callouts, and filler captions.
- Marketing claims, benefits, slogans, and learning explanations.
- Extra metadata chips beyond what helps interpret the diagram.

Keep the PNG focused on the real runtime system. Put assumptions, variants, and optional enhancements in the Markdown prompt instead of the image.

## Required Output Files

Base output folder:

```text
../series/system-architecture-diagrams
```

Create files using this naming pattern:

```text
series/system-architecture-diagrams/prompts/{architecture-slug}-architecture-prompt.md
series/system-architecture-diagrams/images/{architecture-slug}-architecture.png
series/system-architecture-diagrams/templates/{architecture-slug}-architecture-diagram.html
```

Optional files when useful:

```text
series/system-architecture-diagrams/posts/{series-number}-{architecture-slug}-architecture-post.md
```

Use lowercase slugs in filenames.

Example:

```text
series/system-architecture-diagrams/prompts/serverless-ecommerce-architecture-prompt.md
series/system-architecture-diagrams/images/serverless-ecommerce-architecture.png
series/system-architecture-diagrams/templates/serverless-ecommerce-architecture-diagram.html
```

Do not save complete architecture diagram outputs in the service-card folders (`prompts`, `images`, `templates`, or `posts`). Keep them inside `series/system-architecture-diagrams`.

For every architecture slug, create at most one Markdown prompt, one final PNG image, one HTML/CSS render template, and one optional LinkedIn post. The HTML template is the rendering source for the single PNG and must not render a carousel, alternate version, comparison image, or second canvas.

Do not leave generated HTML files in the `linkedin-content-forge` root.

## Diagram Types

Choose the diagram type that matches the requested workload. If the user does not specify a type, select the smallest type that accurately explains the architecture.

Supported types:

- `Conceptual Architecture`: high-level application components and service responsibilities.
- `Logical Architecture`: service relationships, core flows, data stores, and security controls.
- `Runtime Architecture`: production traffic, service relationships, data stores, async processing, security, and operations.
- `Deployment Topology`: runtime placement with accounts, regions, VPCs, subnets, AZs, and compute placement.
- `Network Architecture`: VPC, subnets, route paths, gateways, endpoints, load balancers, and security boundaries.
- `Serverless Architecture`: API Gateway, Lambda, EventBridge, SQS, SNS, Step Functions, DynamoDB, S3, and observability flows.
- `Container Architecture`: ECS, EKS, Fargate, load balancing, service discovery, autoscaling, runtime networking, and service communication.
- `Data Pipeline Architecture`: ingestion, queues/streams, processing, storage, catalog, analytics, and governance.
- `CI/CD Architecture`: source, build, test, artifact, deploy, approval, environment promotion, and rollback paths. Use only when explicitly requested.
- `Multi-Account Architecture`: AWS Organizations, accounts, shared services, networking, identity, logging, and security tooling.

## Canvas Rules

Default output:

```text
PNG
```

Recommended canvas:

```text
1080 x 1350 px
```

Use vertical 4:5 format for complete architecture diagrams by default because the primary publishing target is LinkedIn.

Use `1920 x 1080 px` only when the user explicitly requests a landscape format for documentation or presentation.

Use `1080 x 1920 px` for tall story/reel diagrams only when the architecture has a natural vertical flow.

Do not stretch the image non-proportionally. Text, icons, square tiles, and circular badges must keep natural proportions.

For `1080 x 1350 px` diagrams:

- Keep the main content frame about `984-1016 px` wide.
- Keep the left edge around `x=32-48 px`.
- Keep the right edge around `x=1032-1048 px`.
- Use stacked vertical layers instead of a wide horizontal system map.
- Prefer top-to-bottom flow: external users, edge/API, application services, async/data, security/observability.
- Keep labels short enough to remain readable on mobile LinkedIn previews.
- Avoid more than 14-18 visible service nodes unless the user asks for a dense reference diagram.

## Required Diagram Structure

Every complete architecture diagram must include the relevant structure below.

Include only boundaries that apply to the architecture:

1. External actors and systems.
2. AWS Cloud boundary.
3. Account boundary when one or more accounts matter.
4. Region boundary when regional placement matters.
5. Availability Zone boundaries when subnet or high availability placement matters.
6. VPC boundary when networking placement matters.
7. Public subnet and private subnet boundaries when applicable.
8. Edge/network entry layer.
9. Application or compute layer.
10. Integration or async messaging layer.
11. Data layer.
12. Security and identity controls.
13. Observability and audit layer.
14. Operations support layer when relevant.

Do not force every boundary into every diagram. A diagram is better when it shows the important real architecture clearly instead of including every possible AWS layer.

## Header Standard

Architecture diagrams must use the same visual header standard as the AWS learning cards.

Header requirements:

- Use one compact header container at the top of the canvas.
- Use the same header rhythm as the learning images: official icon tile on the left, main title next to it, and a compact type badge on the right.
- Use a light or glass-like header surface with a low-opacity service/category color wash, subtle border, and soft shadow.
- Do not use a plain text-only header.
- Do not use a dark navy full-width header.
- Do not add a subtitle, paragraph, long explanation, or marketing copy inside the header.
- The header must feel visually connected to the existing AWS service card series.

Header content:

```text
{APP_OR_WORKLOAD_NAME}
{DIAGRAM_TYPE_LABEL}
```

Recommended type badge labels:

```text
Runtime
Serverless
Containers
Data Pipeline
Network
Multi-Account
```

Optional small metadata chips may appear inside the header only if they fit without crowding:

```text
Production
Single Region
Multi-AZ VPC
```

Header icon rules:

- If the workload has one dominant AWS service, use that official AWS icon.
- If the workload is multi-service and no single service owns the architecture, use a neutral AWS Cloud/application icon treatment or the most central runtime service icon.
- The header icon must be inside a consistent tile.
- The icon tile must use the same size, shape, padding, background, and border style as the AWS learning card headers.
- Preserve official AWS icon colors exactly.
- Center the icon visually and geometrically inside the tile.
- Do not let the icon touch the tile edges.

Header sizing for `1080 x 1350`:

- Header outer frame: about `984-1016 px` wide.
- Header left edge: around `x=32-48 px`.
- Header right edge: around `x=1032-1048 px`.
- Header height: `96-128 px`.
- Header icon tile: `56-72 px`.
- Main title: one line preferred, two lines maximum.
- Badge/chips must not overlap the title.

If the workload name is too long, shorten the visible title while preserving meaning. Put the full workload name in the Markdown prompt, not necessarily in the PNG.

Do not place long explanations in the header. Keep any description in a short callout panel only if needed.

## AWS Icon Rules

Use official AWS Architecture Icons from:

```text
../../shared/assets/aws-icons
```

Before rendering:

1. Check `shared/assets/aws-icons` for each required service icon.
2. If an icon is missing, use the official AWS Architecture Icons package/source.
3. Save missing official SVG icons into `../../shared/assets/aws-icons`.
4. Preserve official icon artwork, colors, proportions, and names.

Do not redraw, recolor, simplify, convert to monochrome, or replace AWS service icons with generic icons.

Generic line icons may be used only for non-AWS concepts such as users, mobile app, browser, external SaaS, on-premises system, admin, payment provider, or third-party API.

## Component Node Standard

Every architecture component must use a standardized node style unless it belongs to a boundary container or legend.

Default component node:

- Use a white or near-white rounded rectangle.
- Corner radius: `8-12 px`.
- Thin border: `1-1.5 px`.
- Subtle shadow only; avoid heavy card shadows.
- Icon tile on the left.
- Service name on the first text line.
- Short role label on the second text line.
- Fixed width and height within each row or section.
- Consistent icon tile size within the full diagram.
- Consistent internal padding within the full diagram.

Default node content format:

```text
{AWS_SERVICE_NAME}
{SHORT_RUNTIME_ROLE}
```

Examples:

```text
Amazon API Gateway
Public APIs

Amazon ECS
Microservices

Amazon RDS
Orders/payments
```

Component node sizing for `1080 x 1350`:

- Standard node height: `68-84 px`.
- Compact node height: `56-66 px`.
- Standard icon tile: `42-52 px`.
- Icon artwork inside tile: `30-40 px`, depending on the original icon shape.
- Left padding: `12-16 px`.
- Text start x-position must be consistent across nodes in the same section.
- Horizontal gap between nodes: `24-44 px`.
- Vertical gap between layers: `22-44 px`.

Use one node size per section whenever possible. Do not mix many node widths in the same row unless the content requires it.

## Icon Alignment Rules

Icons must look centered and balanced.

Required checks:

- Center each icon inside its tile using the visible artwork bounds, not the raw SVG viewport if the SVG has padding.
- Preserve the icon's official aspect ratio.
- Do not stretch icons.
- Do not crop official icon artwork.
- Do not place two unrelated AWS icons in one tile.
- If a node represents ECS on Fargate, either use a clean paired-icon treatment with two equal tiles or use the primary runtime icon and mention Fargate in the role label.
- Keep all icon tiles aligned to the same y-position within a row.
- Keep all icon tiles the same size within a diagram.

If an exported icon appears visually off-center because the SVG has whitespace, trim transparent/empty bounds during rendering while preserving the official artwork.

## Text Fit Rules

Text must never overflow its node, chip, label, boundary, or callout.

Required text rules:

- Every visible text line must fit inside its parent container.
- Service names should usually be one line.
- Role labels should usually be one line, two lines maximum.
- Do not allow long service lists inside a single node if they exceed the node width.
- Replace long lists with grouped labels such as `Core services`, `Commerce services`, or `Order services`.
- Use smaller supporting text only when needed, but keep it readable on mobile.
- Do not scale font size with viewport width.
- Letter spacing must be `0`.
- Do not use negative letter spacing.
- Use text wrapping, shorter labels, or larger containers before reducing text below readable size.

Recommended visible label limits:

- Header title: `32` characters preferred, `44` maximum before wrapping.
- Node service name: `22` characters preferred, `30` maximum before wrapping.
- Node role label: `28` characters preferred, `36` maximum before wrapping.
- Arrow label: `14` characters preferred.
- Chip label: `16` characters preferred.

If a label would overflow:

1. Shorten the label.
2. Wrap to a second line if the node height supports it.
3. Increase the node width within the section grid.
4. Move detail into the Markdown prompt instead of the image.

Do not let text overlap icons, arrows, section titles, boundaries, other nodes, or footer/legend content.

## Section And Boundary Standard

The architecture must be organized as a small hierarchy of clearly grouped rectangular panels. Use the reference image as an organizational cue: readers should be able to identify the major zones before following individual arrows. This is a layout rule, not a requirement to copy the reference's colors, icons, or exact composition.

### Required visual hierarchy

Use these levels when they apply:

1. **Canvas and header**: one clean outer frame for the title.
2. **Primary boundary**: AWS Cloud, account, region, VPC, or an external-systems area.
3. **Functional section panels**: edge/API, runtime/compute, events/async, data, security, and observability.
4. **Component nodes**: AWS services and external actors inside the section that owns their role.

Every component node should belong to a visible section panel unless it is an external actor at the entry edge or a compact legend item. Do not scatter unrelated nodes directly on the canvas.

Use boundary containers for:

- AWS Cloud
- Account
- Region
- VPC
- Public subnet
- Private subnet
- External systems
- Edge or ingress layer
- Runtime or compute layer
- Events, queues, or integration layer
- Data layer
- Security and observability layer

### Functional section panel rules

- Draw each major functional group as a rounded rectangle with a short title in its upper-left area.
- Give every panel a light semantic tint and a thin tinted border; panel fills must remain lighter than component nodes.
- Keep the title separated from the nodes with a dedicated top padding band; never place a node over a panel title.
- Use one panel per coherent responsibility. Do not create a panel for every individual service.
- Put nodes that communicate heavily in the same panel or in adjacent panels with a clean shared edge.
- Keep the primary runtime path visually central; place support panels such as security and observability to the side or below.
- Align nodes to a consistent internal grid. Equal-role nodes in a row should share width, height, icon tile size, and baseline.
- Maintain visible breathing room between panel borders and nodes. Nodes must not touch panel edges.
- Use nesting only when it communicates a real boundary, such as `AWS Cloud > Region > VPC`. Do not nest decorative cards inside functional panels.
- Avoid more than two nested boundary levels inside the main content area unless account, region, and VPC placement are essential to the architecture.

### Boundary styling

- Boundary containers must be visually distinct from component nodes.
- Use lighter fills than component nodes.
- Use thin borders, typically `1-1.5 px`, with no heavy shadow.
- Put boundary titles in the top-left with consistent inset padding.
- Do not let arrows or labels cross boundary titles when avoidable.
- Arrows may cross a panel boundary only when they represent a real inter-zone flow; route them through clear gaps rather than across nodes or titles.
- Section titles must be short and functional, such as `Edge and API`, `Runtime`, `Async processing`, `Data`, or `Security and observability`.
- Do not use marketing statements, benefits, or paragraph-length explanations as panel titles.

## Visual Design Rules

Use the existing AWS series visual core:

- Clean AWS-inspired technical design.
- Bright canvas with very light neutral background.
- Polished typography similar to Inter, SF Pro, Manrope, Satoshi, or Avenir Next.
- Thin borders.
- Subtle shadows.
- Refined panels and boundaries.
- Official AWS icons in consistent tiles or service nodes.
- Productive whitespace.
- Clear visual hierarchy.
- High readability on mobile LinkedIn feeds and desktop previews.

Target visual feel:

- Professional AWS architecture poster.
- Clean technical diagram, not a slide deck.
- Editorial layout with restrained density.
- AWS-native visual language without copying the AWS console.
- Useful at first glance and still readable when zoomed in.
- Calm system map where boundaries and service ownership are easier to read than arrows.
- Diagram that feels reviewed by an architect, not generated as a decorative infographic.

Use AWS service-category colors as accents, but keep the canvas calm. Do not let the diagram become dominated by a single purple, navy, beige, or orange palette.

Preferred color system:

- Background: white or very light cool neutral.
- Main boundaries: light blue or light neutral borders.
- VPC/private runtime area: subtle green or teal tint.
- Async/event/data area: subtle blue, violet, or neutral tint.
- Security/observability area: subtle amber or neutral tint.
- Component nodes: white surfaces with consistent border.
- Arrows: muted gray-blue for sync, soft purple-gray for async, very light slate for observability. Arrows must be visually quieter than component nodes, panel titles, and boundary labels.

Use color to communicate architecture grouping, not decoration.

Recommended visual tokens for `1080 x 1350` diagrams:

```text
Canvas background: #f6f8fb or #f8fafc
Panel fill: #ffffff to #f7fbff
Panel border: #d7e2ee to #c9d8e8
Component fill: #ffffff
Component border: #c8d6e6
Primary text: #172033 to #1f2a3d
Secondary text: #607086 to #728197
Sync line: #6f849b at 55-70% opacity
Async line: #8a7bb8 at 45-60% opacity
Observability line: #8f9ca9 at 35-50% opacity
Security/control line: #b79255 at 45-60% opacity
Risk/failure line: #c87555 at 65-80% opacity, only when explicitly needed
```

Color and weight hierarchy:

1. Header title and primary panel titles.
2. Component nodes and official AWS icons.
3. Boundary labels and support panels.
4. Primary flow connectors.
5. Secondary, async, security, and observability connectors.

If arrows compete with service nodes, reduce stroke width, opacity, or labels before changing the node design.

Professional polish rules:

- Keep shadows subtle and consistent.
- Avoid heavy borders.
- Avoid excessive rounded corners.
- Avoid thick colorful outlines around every node.
- Avoid oversized icons.
- Avoid oversized labels.
- Avoid decorative background patterns.
- Avoid callout boxes unless they explain a real architecture decision.
- Avoid footers or source notes that compete with the diagram.
- If a legend is needed, keep it compact and visually quiet.
- Keep connector labels smaller and quieter than node labels.
- Keep panel titles clear but not oversized; architecture hierarchy should come from grouping and alignment, not giant text.
- Use whitespace and panel grouping before using color intensity.
- Prefer quiet matte surfaces over glassmorphism, glow, or high-contrast gradients.

Avoid:

- Dark full-canvas backgrounds.
- Decorative gradient blobs, bokeh, or abstract backgrounds.
- Generic stock imagery.
- Blurry icons.
- Tiny unreadable text.
- Off-center icons inside tiles.
- Mixed component box styles without a clear reason.
- Text that escapes its container.
- Crowded service clusters.
- Arrows crossing heavily.
- Excessive decorative labels.
- Marketing-style hero layouts.
- Technology/framework lists for generic example architectures.
- Repeating the same idea in both a node label and a callout.
- Adding services only to make the diagram look fuller.

## Layout Rules

Use architecture diagram conventions:

- Place users and external systems on the far left or top.
- Place edge and ingress services near the entry point.
- Place compute/application services in the center.
- Place async/event services between producers and consumers.
- Place data stores near the services that own or consume them.
- Place security and identity controls close to the flows they protect.
- Place observability and audit services as side or lower support layers.
- Omit CI/CD and deployment paths unless explicitly requested.

Prefer top-to-bottom flow for default LinkedIn architecture diagrams.

Use left-to-right flow only inside a layer when it improves readability.

Use grouped rectangular panels as the default layout primitive. Swimlanes or boundary boxes may be used when they clarify a real network or ownership boundary.

### Panel-first composition

Design the geometry in this order:

1. Reserve the header and outer margins.
2. Place the primary boundary or main cloud frame.
3. Divide the usable area into functional section panels before placing service nodes.
4. Place nodes on a shared grid inside their owning panel.
5. Route the primary flow through panel centers or intentional gaps.
6. Add secondary, async, security, and observability flows only after the main path is readable.

For the default `1080 x 1350` canvas, use a practical structure such as:

- Header panel at the top.
- External actors/entry panel below the header when needed.
- One large AWS or primary-system boundary around the core architecture.
- Two to four stacked or side-by-side functional panels inside that boundary.
- A compact security/observability support panel near the bottom or along one side.
- Optional small legend panel at the bottom.

The exact number and arrangement of panels may change with the workload, but the grouping must remain obvious at a glance. Prefer fewer, larger panels over many small boxes.

Panel layout constraints:

- Keep consistent outer margins and gutters between sibling panels.
- Use a shared left edge when panels form a vertical stack.
- Use a shared baseline when panels form a horizontal row.
- Do not place a panel title, node, or label directly underneath an arrowhead.
- Reserve clear routing corridors between panels; do not route several unrelated arrows through the same narrow gap.
- Avoid crossing arrows inside a panel. If crossings are unavoidable, reorganize the nodes or split the section.
- Keep the primary user/request flow visually dominant and mostly monotonic: top-to-bottom by default, left-to-right within a row.
- Keep external actors outside the AWS boundary and keep data stores inside the data panel or their correct network boundary.

Do not put UI cards inside other cards. Use boundary containers for architecture zones, not decorative nested cards.

For LinkedIn vertical diagrams, prefer this section order:

1. Header.
2. External actors and entry points.
3. AWS edge/API layer.
4. Runtime compute/application layer.
5. Events, queues, and data layer.
6. Security and observability layer.
7. Optional compact legend.

Do not add an explanatory footer unless required. If sources are needed, keep them in the Markdown prompt, not as prominent visible image text.

Every visible component in the same semantic tier should look homologated:

- Same node height.
- Same icon tile size.
- Same border color and radius.
- Same shadow depth.
- Same title and role font sizes.
- Same text alignment.

Use visual differences only to communicate real architecture differences, such as external systems, AWS boundaries, async/event layer, data layer, or security/observability support.

## Flow Line Rules

Use a consistent line system:

- Solid arrow: synchronous request/response or direct invocation.
- Dashed arrow: asynchronous event, queue, notification, or scheduled flow.
- Dotted arrow: observability, logs, metrics, traces, audit, or monitoring.
- Double-line or emphasized arrow: primary user traffic path.
- Thin gray arrow: secondary operational flow.
- Red or amber line only for risk, alert, failure, or blocked path.

Include a small legend only when more than two line styles are used.

### Connector visual weight

Architecture connectors must be informative but visually secondary. The diagram should not look like a web of heavy arrows.

Recommended connector styling for `1080 x 1350` diagrams:

```text
Primary user/request path: 2.0-2.5 px stroke, 70-85% opacity
Normal synchronous flow: 1.4-1.8 px stroke, 55-70% opacity
Asynchronous/event flow: 1.3-1.7 px stroke, 45-60% opacity, dashed
Observability/audit flow: 1.0-1.4 px stroke, 35-50% opacity, dotted
Security/control relationship: 1.0-1.4 px stroke, 40-60% opacity
Secondary operational flow: 1.0-1.2 px stroke, 35-50% opacity
```

Arrowheads:

- Use small arrowheads, proportional to the line width.
- Do not use oversized triangular arrowheads.
- Arrowheads should be the same muted color and opacity as the line.
- Use arrowheads only where direction matters.
- For observability or support relationships, omit arrowheads when the dotted line plus label is enough.

Connector contrast rules:

- Connectors must be lighter than node borders and quieter than service names.
- Never use saturated blue, purple, green, or orange for routine connectors.
- Do not add glow, drop shadow, gradient, or thick highlight effects to arrows.
- Reserve emphasis for one primary traffic path only.
- If every connector is emphasized, none of them are emphasized.

### Connector routing

Route lines through intentional open corridors:

- Prefer orthogonal or gently curved routes over diagonal spaghetti.
- Route from node edge to node edge; do not start or end lines from the center of an icon.
- Keep connector endpoints aligned to the center of the node side when possible.
- Do not run arrows through icons, service names, panel titles, or boundary labels.
- Do not route multiple unrelated arrows through the same narrow gap.
- Avoid crossings. If crossings appear, rearrange panels/nodes before adding more arrow styles.
- Keep support flows such as logs, metrics, audit, secrets, and IAM visually near their related services, but quieter than the main runtime path.
- Prefer one grouped observability connector from a panel to an observability node instead of many noisy per-service dotted lines, unless per-service tracing is the point of the diagram.
- Prefer one grouped security/control connector from a panel to IAM/KMS/Secrets Manager instead of drawing a control line from every component.

Keep arrow labels short:

```text
HTTPS
REST API
Events
Messages
Logs
Metrics
Read/Write
Auth
```

Do not over-label obvious flows.

Arrow labels must not overlap nodes, titles, icons, or other arrows. Place labels on short horizontal segments when possible. If a label cannot fit cleanly, remove it or replace it with the legend.

Label styling:

- Use smaller text than component labels.
- Use muted gray-blue text.
- Use a tiny white or near-white label background only when the label crosses a boundary or line.
- Do not place labels on top of nodes or inside icon tiles.

## Architecture Accuracy Rules

The diagram must be architecturally plausible and AWS-aligned.

Required checks:

- Public-facing resources are shown in public-facing layers only when appropriate.
- Private compute and databases are not shown directly exposed to the internet.
- Databases are placed in private subnet/data layer when VPC placement applies.
- Load balancers, API Gateway, CloudFront, Route 53, and WAF are placed in realistic ingress positions.
- IAM is shown as access control, not as a data-path hop.
- Secrets Manager and KMS are shown as support/security services, not primary request routers.
- CloudWatch, CloudTrail, X-Ray, and logging services are shown as observability/audit flows.
- SQS, SNS, EventBridge, and Step Functions are shown with correct async/orchestration semantics.
- S3 is shown as object storage, static hosting, artifact storage, or data lake storage only when that role fits.
- ECR is omitted by default because it belongs to deployment/build context. Show it only when CI/CD or container image supply chain is explicitly requested.
- VPC endpoints, NAT Gateway, Internet Gateway, Route 53, WAF, and CloudFront are shown only when relevant.
- Multi-AZ or multi-region claims are only shown when the architecture actually uses them.
- Serverless services are not incorrectly placed inside subnets unless the AWS service behavior supports that placement.

## Security And Operations Requirements

When relevant, include:

- IAM roles/policies for service permissions.
- AWS WAF for protected public web/API entry points.
- AWS KMS for encryption keys.
- AWS Secrets Manager or Systems Manager Parameter Store for sensitive configuration.
- Security groups and network ACLs only when network-level detail is part of the diagram.
- CloudWatch for logs, metrics, dashboards, and alarms.
- CloudTrail for API audit events.
- AWS X-Ray or OpenTelemetry collector paths when tracing is relevant.
- Backup, lifecycle, retention, or disaster recovery notes only when requested or central to the design.

Do not overload the diagram with every possible control. Show controls that materially explain the architecture.

## Content Labels

Keep visible text concise and technical.

For general example diagrams, visible labels should be AWS service + runtime role only. Do not include frameworks, programming languages, libraries, database engines, or vendor products unless the user specifically asks for a real implementation diagram.

Preferred label format:

```text
Service Name
Short role label
```

Examples:

```text
Amazon API Gateway
Public REST API

AWS Lambda
Order processor

Amazon DynamoDB
Orders table

Amazon SQS
Retry buffer
```

Avoid paragraphs inside the diagram. If explanation is necessary, use short callouts.

Avoid using one component node to list many microservices if that list causes overflow. Prefer one of these patterns:

- Use grouped services: `Commerce services`, `Order services`, `Payment service`.
- Use two or three small service nodes when the individual services are important.
- Use a short callout outside the node for examples.

Never let a microservice list run past the node border.

## Assumptions

If the user does not provide enough detail, make practical assumptions and include them in the Markdown prompt file under `Assumptions`.

Do not put assumptions as large text blocks in the final image.

Common assumptions may include:

- Single AWS account unless multi-account is requested.
- One primary AWS Region unless multi-region is requested.
- Production runtime environment unless the user asks for dev, staging, CI/CD, or deployment architecture.
- Managed services preferred over self-managed components unless the user specifies otherwise.
- Private databases and least-privilege IAM roles.

## Markdown Prompt Template

Each generated architecture prompt must use this structure:

```markdown
# {APP_OR_WORKLOAD_NAME} Architecture Diagram Prompt

## Official AWS Sources

- {SOURCE_1}
- {SOURCE_2}
- {SOURCE_3}

## Architecture Context

- Diagram type: {DIAGRAM_TYPE}
- Workload: {APP_OR_WORKLOAD_NAME}
- Environment: {ENVIRONMENT}
- Region model: {REGION_MODEL}
- Account model: {ACCOUNT_MODEL}
- Primary pattern: {ARCHITECTURE_PATTERN}

## Assumptions

- {ASSUMPTION_1}
- {ASSUMPTION_2}

## Image Generation Prompt

Create one complete AWS architecture diagram for {APP_OR_WORKLOAD_NAME}. This topic must result in exactly one final image.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use official AWS Architecture Icons for all AWS services.

### Required Boundaries

{BOUNDARIES}

### Runtime Flow

{REQUEST_OR_EVENT_FLOW}

### Data Flow

{DATA_FLOW}

### Security And Identity

{SECURITY_CONTROLS}

### Observability And Audit

{OBSERVABILITY_CONTROLS}

### Services To Show

{AWS_AND_EXTERNAL_SERVICES}

### Visual Style

Use a clean professional AWS-inspired technical architecture style with a bright neutral background, official AWS icons, thin boundaries, subtle shadows, and clear section panels. Group related services inside titled rounded rectangular panels before arranging the nodes. Keep the diagram polished, restrained, useful, and easy to scan. Make arrows and connector labels visually quieter than component nodes and panel titles. Do not add decorative filler, marketing copy, framework lists, or services that are not relevant to the runtime architecture.

### Sectioned Layout Requirement

Build the composition panel-first: place the major architecture boundaries and functional section panels first, then place homologated service nodes inside their owning panel. Every section panel must have a short title, light semantic tint, thin border, internal padding, and consistent alignment. Keep the primary flow central and route arrows through intentional gaps between panels. Use grouped support connectors for observability/security when individual per-service lines would create clutter. Do not leave unrelated service nodes floating on the canvas or use nested cards as decoration.

### Line Legend

- Solid arrow: synchronous request or direct invocation.
- Dashed arrow: asynchronous event or queue/message flow.
- Dotted arrow: logs, metrics, traces, audit, or monitoring.
- Keep arrows muted and thin. Use stronger emphasis only for the single primary runtime path.

## Accuracy Checklist

- AWS services and integrations are confirmed from official AWS sources.
- AWS service names use official capitalization.
- Official AWS Architecture Icons are used when available.
- Only relevant production runtime components are visible.
- No decorative filler, marketing copy, or generic framework/technology lists are visible.
- Color is used for grouping and architecture meaning, not decoration.
- Major functional groups are enclosed in titled rectangular section panels.
- Every service node belongs to a clear owning panel or valid external boundary.
- Panel titles, borders, gutters, and internal padding are consistent.
- The panel hierarchy communicates real architecture boundaries rather than decoration.
- The visual style is clean, professional, and AWS-inspired.
- Header follows the same visual standard as the AWS learning cards.
- Component boxes are homologated within each layer.
- Icons are visually centered inside their tiles.
- Icon tiles are aligned consistently.
- No visible text overflows its container.
- No visible text overlaps arrows, icons, boundaries, or other text.
- Network boundaries are realistic.
- Public and private layers are not confused.
- Data stores are not directly exposed to the internet.
- IAM, KMS, and secrets are shown as security controls, not request routers.
- Observability and audit flows are visually distinct from runtime traffic.
- Async flows are visually distinct from synchronous flows.
- Arrows are muted, thin, routed through clear corridors, and visually secondary to nodes.
- No connector label or arrowhead competes with service names, panel titles, or official icons.
- All visible text is in English.
- Final output is PNG.
- Diagram uses vertical 4:5 LinkedIn format unless another format is explicitly requested.
- CI/CD, build, artifact, registry, and deployment services are omitted unless explicitly requested.
```

## Execution Command

From the workspace root:

```bash
cd ".."
```

Run this command, replacing the workload name and slug:

```bash
codex "Use the rules in './series/system-architecture-diagrams/rules.md' to generate one complete real production-runtime AWS architecture diagram for {APP_OR_WORKLOAD_NAME} in vertical LinkedIn format. Generate exactly one final PNG image for this architecture. Do not create a generic companion image, AWS companion image, Overview image, or Deep Dive image. Do not include CI/CD, build, deployment, repository, or container registry services unless explicitly required by the workload. Research only official AWS documentation, AWS Architecture Center, AWS Well-Architected Framework, and AWS Architecture Icons. Create one Markdown prompt in './series/system-architecture-diagrams/prompts', one HTML/CSS render template in './series/system-architecture-diagrams/templates', and one final PNG image in './series/system-architecture-diagrams/images'. Use the architecture slug '{architecture-slug}'. All visible diagram text must be in English."
```

Example:

```bash
codex "Use the rules in './series/system-architecture-diagrams/rules.md' to generate one complete real production-runtime AWS architecture diagram for a serverless ecommerce checkout app in vertical LinkedIn format. Generate exactly one final PNG image for this architecture. Do not create a generic companion image, AWS companion image, Overview image, or Deep Dive image. Do not include CI/CD, build, deployment, repository, or container registry services unless explicitly required by the workload. Research only official AWS documentation, AWS Architecture Center, AWS Well-Architected Framework, and AWS Architecture Icons. Create one Markdown prompt in './series/system-architecture-diagrams/prompts', one HTML/CSS render template in './series/system-architecture-diagrams/templates', and one final PNG image in './series/system-architecture-diagrams/images'. Use the architecture slug 'serverless-ecommerce-checkout'. All visible diagram text must be in English."
```

## Completion Criteria

The task is complete when:

- The workload architecture has been researched from official AWS sources.
- Exactly one final PNG is produced for the architecture topic.
- The architecture assumptions are documented in the Markdown prompt.
- The diagram uses official AWS Architecture Icons where available.
- The final diagram shows realistic boundaries, services, flows, security, and operations.
- The final diagram includes only relevant production runtime components.
- The visual design is clean, professional, AWS-inspired, and free of decorative filler.
- Component boxes are homologated, icons are centered, and text does not overflow.
- The single final PNG is saved in `series/system-architecture-diagrams/images`.
- One HTML/CSS render template is saved in `series/system-architecture-diagrams/templates`.
- The final response tells the user the created file paths and mentions the official AWS sources used.
