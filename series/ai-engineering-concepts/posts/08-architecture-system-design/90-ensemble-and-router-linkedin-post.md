# One model is not always the architecture

Ensemble and router patterns let an AI system choose or combine models based on the request. A cheap model may handle simple classification. A stronger model may handle complex reasoning. A specialist model may handle vision, coding, retrieval, or safety checks.

The hard part is not calling multiple models. The hard part is deciding when to route, when to combine, when to fallback, and how to measure whether the extra complexity is worth it.

Three implementation reminders:

- Make routing policies explicit and testable.
- Track quality, latency, and cost by route.
- Use evals to compare single-model, routed, and ensemble behavior.

This pattern is useful when capability, cost, latency, or risk varies sharply across request types.

#AIEngineering #AIArchitecture #LLM #MachineLearning #SoftwareEngineering
