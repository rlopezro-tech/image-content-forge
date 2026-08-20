# System Architecture Diagrams

LinkedIn diagram series for complete production-runtime system architectures.

This series is separate from AWS service cards. It explains full workloads: traffic entry, runtime services, data stores, async flows, security controls, observability, and operational boundaries.

## Folders

```text
prompts/    Markdown prompts for architecture diagrams
templates/  HTML/CSS/SVG render sources
images/     Final PNG exports
posts/      LinkedIn post copy
```

## Default Format

- Canvas: `1080 x 1350`.
- Output: PNG.
- Visible text: English.
- Scope: production runtime by default.

CI/CD, repositories, build systems, and deployment flows should only be included when the specific diagram requires them.

## Design Direction

- Use panel-first architecture layouts: boundaries and ownership should be clear before following arrows.
- Keep connectors muted, thin, and visually secondary to service nodes and panel titles.
- Emphasize only the primary runtime path; keep async, observability, security, and support flows quieter.
- Prefer grouped support connectors over many per-service lines when the diagram would become noisy.
