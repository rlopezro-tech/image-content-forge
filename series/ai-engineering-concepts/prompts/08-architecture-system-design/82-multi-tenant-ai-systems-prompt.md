# Multi-Tenant AI Systems Card Prompt

Create a single 1080 x 1350 px vertical LinkedIn technical study card for **Multi-Tenant AI Systems**.

Category: `08-architecture-system-design`
Badge: `Architecture Pattern`
Output files:

```text
templates/08-architecture-system-design/82-multi-tenant-ai-systems-card.html
images/08-architecture-system-design/82-multi-tenant-ai-systems.png
posts/08-architecture-system-design/82-multi-tenant-ai-systems-linkedin-post.md
```

Teaching angle: isolate data, prompts, retrieval, memory, tool permissions, logs, quotas, and audit traces by tenant across the AI request path.

Use the alternative bottom format because this concept is best explained as an architecture boundary map.

Required sections: `OVERVIEW`, `HOW IT WORKS`, `SYSTEM MAP`.

The `SYSTEM MAP` should show how the tenant context is resolved once and then carried through policy, prompt/context assembly, retrieval filters, memory, tool authorization, model execution, response delivery, logs, quotas, and audit controls. Do not include `ENGINEERING NOTES` or `PRACTICAL STACK` in the card.
