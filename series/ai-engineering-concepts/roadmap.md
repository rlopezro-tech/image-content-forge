# AI Engineering Concepts Roadmap

Recommended publishing order for the AI Engineering Concepts LinkedIn series.

The sequence is organized around practical AI Engineer job skills: core mental models, retrieval implementation, evaluation, production operations, security, agents, architecture/deployment, and framework/tooling choices.

Use this as a planning roadmap. The canonical generated assets still live in:

```text
prompts/
templates/
images/
posts/
```

## Publishing Strategy

Default format:

- One image per publication.
- Vertical card: `1080 x 1350`.
- Visible card text: English.
- Post copy: English, concise, and practical.
- Every card should have a clear teaching angle, not only a topic name.

Suggested cadence options:

- 1 post per day: safest for consistency and polish.
- 3 posts per day: possible if grouped by level or theme.
- Mixed cadence: publish fundamentals faster, then slow down for advanced topics.

If publishing 3 posts per day, avoid posting three advanced topics together. A good pattern is:

```text
Post 1: foundation or concept
Post 2: applied implementation pattern
Post 3: production, security, eval, or failure mode
```

## Classification Rules

Each roadmap item should map to a header badge:

- `Mental Model`: foundational reasoning model.
- `Implementation`: how to build it in real systems.
- `Tooling Map`: real tools grouped by function.
- `Production Checks`: operational risks, reliability, drift, cost, latency, monitoring.
- `Eval Pattern`: datasets, judges, scorecards, regression tests, retrieval quality.
- `Security Pattern`: injection, leakage, policy, validation, safe tool use.
- `Framework Notes`: specific SDKs, frameworks, and ecosystem choices.

## Level 1: Core Mental Models

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 1 | Embeddings | Mental Model | Meaning represented as vectors for retrieval and similarity. |
| 2 | Tokenization | Mental Model | How text becomes model input and why tokens affect cost, latency, and limits. |
| 3 | Context Window | Mental Model | What fits in context, what gets lost, and why context is not memory. |
| 4 | Structured Outputs | Implementation | Constrain model responses into schemas your app can trust. |
| 5 | Tool Calling | Mental Model | Let models request external actions through typed interfaces. |
| 6 | Context Engineering | Implementation | Select, shape, compress, and route context for better outputs. |
| 7 | RAG | Mental Model | Combine retrieval with generation to answer from external knowledge. |

## Level 2: Retrieval Implementation

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 8 | Vector Search | Mental Model | Nearest-neighbor search over embedding space. |
| 9 | Vector Databases | Tooling Map | Databases and indexes that store, filter, and query vectors. |
| 10 | Chunking Strategies | Implementation | Split documents for retrieval without losing meaning or structure. |
| 11 | Metadata Filtering | Implementation | Combine semantic search with exact constraints like tenant, date, source, or permissions. |
| 12 | Hybrid Search | Implementation | Blend keyword and vector search for better recall. |
| 13 | Reranking | Implementation | Re-score retrieved candidates before generation. |
| 14 | RAG Pipeline | Implementation | Ingest, embed, index, retrieve, rerank, generate, and cite. |
| 15 | RAG Failure Modes | Production Checks | Hallucinated citations, stale indexes, bad chunks, missing filters, and low recall. |
| 16 | Grounding And Citations | Production Checks | Connect generated answers back to source documents. |

## Level 3: Evaluation

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 17 | LLM Evals | Eval Pattern | Measure behavior, not vibes. |
| 18 | Golden Datasets | Eval Pattern | Build stable examples for regression and quality checks. |
| 19 | Retrieval Evals | Eval Pattern | Measure recall, precision, MRR, nDCG, and answer support. |
| 20 | LLM-as-a-Judge | Eval Pattern | Use model graders carefully with rubrics and calibration. |
| 21 | DeepEval | Framework Notes | Practical eval framework for LLM app testing. |
| 22 | Ragas | Framework Notes | RAG-focused evaluation for faithfulness, answer relevance, context precision, and context recall. |
| 23 | promptfoo | Framework Notes | Test prompts, providers, model outputs, regressions, and red-team cases from config. |
| 24 | Braintrust | Framework Notes | Run experiments, datasets, scorers, CI evals, and online quality monitoring. |
| 25 | Phoenix | Framework Notes | Combine tracing, datasets, experiments, and LLM/RAG evals for debugging and improvement. |
| 26 | TruLens | Framework Notes | Evaluate RAG and agents with groundedness, context relevance, answer relevance, and runtime feedback. |
| 27 | Giskard | Framework Notes | Test, evaluate, and red-team LLM agents for security and business failures. |
| 28 | OpenAI Evals | Framework Notes | Build custom evals and benchmark model/system behavior with reusable eval templates. |
| 29 | Eval Tooling Map | Tooling Map | Compare DeepEval, Ragas, promptfoo, Braintrust, Phoenix, TruLens, Giskard, and OpenAI Evals by use case. |
| 30 | Regression Testing For LLM Apps | Eval Pattern | Catch prompt, model, retrieval, and tool regressions before release. |
| 31 | Offline vs Online Evals | Eval Pattern | Separate pre-release quality checks from live behavior monitoring. |

## Level 4: Production Operations

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 32 | LLM Observability | Production Checks | Track quality, latency, cost, errors, traces, and user feedback. |
| 33 | Tracing LLM Calls | Production Checks | Follow prompts, retrieval, tools, and model calls across a request. |
| 34 | Prompt And Version Tracking | Production Checks | Version prompts, models, schemas, retrieval configs, and eval baselines. |
| 35 | Latency And Cost Optimization | Production Checks | Reduce tokens, calls, retries, and expensive model usage. |
| 36 | Caching For LLM Apps | Implementation | Cache deterministic parts without serving stale or unsafe answers. |
| 37 | Fallbacks And Retries | Production Checks | Handle timeouts, provider errors, invalid outputs, and degraded modes. |
| 38 | Rate Limits And Backpressure | Production Checks | Protect the app when users, providers, or queues spike. |
| 39 | LLM Routing | Implementation | Route by task, cost, latency, risk, or model capability. |

## Level 5: Security And Safety

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 40 | Prompt Injection | Security Pattern | Treat retrieved/user text as untrusted instructions. |
| 41 | Data Leakage | Security Pattern | Prevent sensitive data from entering prompts, logs, outputs, or tools. |
| 42 | PII Redaction | Security Pattern | Detect, transform, or block sensitive personal data. |
| 43 | Output Validation | Security Pattern | Validate schema, policy, format, and business constraints before acting. |
| 44 | Secure Tool Calling | Security Pattern | Authorize tool use, scope inputs, and review side effects. |
| 45 | Guardrails | Security Pattern | Layer validation, policies, filters, and fallback behavior. |
| 46 | Policy Enforcement | Security Pattern | Convert rules into runtime checks and auditable decisions. |

## Level 6: Agents

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 47 | Agents | Mental Model | A model-driven loop that plans, calls tools, observes, and continues. |
| 48 | Agent Loop | Implementation | The runtime cycle: input, plan, tool call, observation, stop condition. |
| 49 | Planning vs Execution | Mental Model | Separate deciding what to do from doing it safely. |
| 50 | Tool Selection | Implementation | Choose tools based on schema, context, permissions, and task fit. |
| 51 | Memory In Agents | Implementation | Distinguish context, short-term state, long-term memory, and retrieval. |
| 52 | Human-in-the-Loop | Production Checks | Add review points for risky, costly, or irreversible actions. |
| 53 | Multi-Agent Systems | Mental Model | Coordinate specialized agents without adding unnecessary complexity. |
| 54 | Agentic RAG | Implementation | Let agents plan retrieval steps, refine queries, and inspect sources. |

## Level 7: Architecture And Deployment

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 55 | API Models vs Self-Hosted Models | Production Checks | Decide between managed APIs and self-hosting based on cost, latency, privacy, control, and operations. |
| 56 | Hosted Model Providers | Tooling Map | Compare managed providers by model capability, reliability, regions, pricing, limits, and ecosystem. |
| 57 | Self-Hosted Inference | Implementation | Serve open-weight models with GPUs, batching, quantization, autoscaling, and monitoring. |
| 58 | Fine-Tuning | Mental Model | Understand when training on examples changes behavior better than prompting or retrieval. |
| 59 | Fine-Tuning Decision Pattern | Implementation | Choose between prompting, RAG, reranking, fine-tuning, distillation, or custom models. |
| 60 | Model Serving Architecture | Implementation | Route traffic through gateways, queues, model servers, caches, and observability. |
| 61 | Async AI Workflows | Implementation | Use queues, jobs, callbacks, and status tracking for slow or expensive AI tasks. |
| 62 | Multi-Tenant AI Systems | Production Checks | Isolate data, prompts, tools, indexes, rate limits, and logs by tenant. |
| 63 | Data Residency And Privacy | Security Pattern | Design around where data is stored, processed, logged, retained, and sent to providers. |
| 64 | Human-in-the-Loop Architecture | Production Checks | Add review, approval, escalation, and audit trails around risky AI actions. |
| 65 | Build vs Buy For AI Infrastructure | Production Checks | Decide what to own versus delegate to providers, frameworks, or managed services. |

## Level 8: Frameworks And Tooling

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 66 | LangChain | Framework Notes | Components, chains, tools, retrievers, and where the abstraction helps. |
| 67 | LlamaIndex | Framework Notes | Data connectors, indexes, retrieval abstractions, and RAG workflows. |
| 68 | OpenAI Agents SDK | Framework Notes | Agent runtime, tools, handoffs, tracing, and guardrails. |
| 69 | Model Context Protocol | Framework Notes | Standardize how apps expose tools, resources, and context to AI systems. |
| 70 | Agent2Agent Protocol | Framework Notes | Standardize how independent agents discover each other, communicate, delegate tasks, and collaborate. |
| 71 | MCP vs A2A | Mental Model | Use MCP for tools/data access and A2A for agent-to-agent communication. |
| 72 | AI Gateway | Tooling Map | Centralize provider access, routing, rate limits, logging, and policy. |
| 73 | Vector DB Tooling Map | Tooling Map | Compare Pinecone, Weaviate, pgvector, Qdrant, Milvus, and FAISS by use case. |
| 74 | Reranker Tooling Map | Tooling Map | Compare cross-encoders, Cohere Rerank, bge-reranker, and provider rerank APIs. |
| 75 | Multi-Model Systems | Implementation | Combine small, large, multimodal, embedding, reranking, and judge models. |
| 76 | AI System Design Tradeoffs | Production Checks | Balance quality, latency, cost, control, reliability, and maintainability. |
| 77 | Production AI Architecture Checklist | Production Checks | End-to-end readiness checklist for real AI applications. |
| 78 | AI Architecture Anti-Patterns | Production Checks | One checklist post covering AS101-AS110: common AI system design mistakes to avoid. |

### AI Architecture Anti-Patterns: AS101-AS110

Use one post for these anti-patterns. The card should classify the failure modes by system layer instead of presenting them as random warnings.

| Code | Anti-Pattern | Category | Why It Fails |
|---|---|---|---|
| AS101 | Prompt-only architecture | Architecture | Treats prompts as the whole system and ignores retrieval, tools, evals, state, and operations. |
| AS102 | No eval gate | Evaluation | Ships prompt/model/retrieval changes without regression tests or quality thresholds. |
| AS103 | Unversioned AI behavior | Operations | Does not version prompts, models, schemas, retrieval configs, or eval datasets. |
| AS104 | Blind RAG | Retrieval | Retrieves context without measuring recall, source quality, chunk quality, or answer support. |
| AS105 | Tool calls without authorization | Security | Lets the model trigger actions without scoped permissions, validation, or side-effect controls. |
| AS106 | One-model-for-everything | Architecture | Uses the same model for extraction, routing, generation, judging, embeddings, and reasoning regardless of task fit. |
| AS107 | Synchronous long-running AI | Runtime | Blocks user flows on slow model calls, deep retrieval, agents, or batch jobs instead of using async workflows. |
| AS108 | No human review path | Safety | Automates risky, costly, or irreversible actions without escalation, approval, or audit trails. |
| AS109 | Provider lock-in by accident | Infrastructure | Couples business logic directly to one provider API without adapters, routing, or fallback strategy. |
| AS110 | Observability as logs only | Operations | Logs raw requests but cannot trace retrieval, tools, costs, latency, eval scores, or failure causes. |

## Notes

Start with Embeddings before RAG. RAG becomes much easier to explain when the audience already understands embeddings, vector search, chunking, and reranking.

The roadmap is not only a list of topics. Each item should have one clear card angle: mental model, implementation decision, tooling map, eval pattern, security pattern, or production check.

Keep the series educational rather than interview-branded. The cards should help with technical interview preparation indirectly by building strong mental models and production reasoning.
