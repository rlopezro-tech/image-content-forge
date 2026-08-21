# AI Engineering Concepts Roadmap

Recommended publishing order for the AI Engineering Concepts LinkedIn series.

The sequence is organized around the real scope of AI Engineering: model fundamentals, context design, retrieval, LLM application patterns, evaluation, production operations, security, agents, architecture, deployment, and frameworks/tooling.

Use this as a planning roadmap. Generated assets should be grouped by category for faster publishing:

```text
prompts/{category-slug}/
templates/{category-slug}/
images/{category-slug}/
posts/{category-slug}/
```

## Publishing Strategy

Default format:

- One image per publication.
- Vertical card: `1080 x 1350`.
- Visible card text: English.
- Post copy: English, concise, and practical.
- Every card should have a clear teaching angle, not only a topic name.
- Group generated assets by category so related posts are easy to find, review, and publish.

Suggested cadence options:

- 1 post per day: safest for consistency and polish.
- 3 posts per day: possible if grouped by level or theme.
- Mixed cadence: publish fundamentals faster, then slow down for advanced topics.

If publishing 3 posts per day, avoid posting three advanced topics together. A good pattern is:

```text
Post 1: foundation or concept
Post 2: applied implementation pattern
Post 3: production, security, eval, deployment, or failure mode
```

## Classification Rules

Each roadmap item should map to a header badge and a category folder.

Recommended header badges:

- `Core Concept`: pure concept or basic mental model.
- `Implementation`: how to build it in real systems.
- `Architecture Pattern`: reusable way to compose an AI system.
- `Deployment Paradigm`: how/where inference or the AI system runs.
- `Production Checks`: operational risks, reliability, drift, cost, latency, monitoring.
- `Eval Pattern`: datasets, judges, scorecards, regression tests, retrieval quality.
- `Security Pattern`: injection, leakage, policy, validation, safe tool use.
- `Anti-Pattern`: common design mistake and why it fails.
- `Framework Notes`: specific SDKs, frameworks, and ecosystem choices.
- `Tooling Map`: real tools grouped by function.
- `Protocol`: standard interface or communication pattern.

Recommended category folders:

```text
01-ai-fundamentals
02-retrieval-knowledge-systems
03-llm-application-patterns
04-evaluation-quality
05-production-operations
06-security-governance
07-agents-orchestration
08-architecture-system-design
09-deployment-infrastructure
10-frameworks-tools-protocols
11-anti-patterns
```

## AI Engineer Capability Map

This series should build seven practical capabilities:

```text
1. Understand models and their constraints.
2. Design context and structured interactions.
3. Build retrieval and knowledge systems.
4. Orchestrate models, tools, workflows, and agents.
5. Evaluate quality with repeatable tests.
6. Operate AI systems in production.
7. Secure, deploy, govern, and evolve AI systems.
```

## Level 1: AI Fundamentals

Pure concepts and basic mental models. These explain what the primitives are and why they matter before introducing system design.

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 1 | Embeddings | Core Concept | Meaning represented as vectors for retrieval and similarity. |
| 2 | Tokenization | Core Concept | How text becomes model input and why tokens affect cost, latency, and limits. |
| 3 | Context Window | Core Concept | What fits in context, what gets lost, and why context is not memory. |
| 4 | Structured Outputs | Core Concept | Constrain model responses into schemas your app can validate and trust. |
| 5 | Tool Calling | Core Concept | Let models request external actions through typed interfaces. |
| 6 | Context Engineering | Core Concept | Select, shape, compress, and route context for better outputs. |
| 7 | RAG | Core Concept | Combine retrieval with generation to answer from external knowledge. |
| 8 | Fine-Tuning | Core Concept | Understand when training on examples changes behavior better than prompting or retrieval. |
| 9 | Model Capability Boundaries | Core Concept | Know when the model lacks data, tools, instructions, context, or reliable reasoning. |
| 10 | AI System Design Tradeoffs | Core Concept | Balance quality, latency, cost, control, reliability, and maintainability. |

## Level 2: Retrieval And Knowledge Systems

Implementation concepts for giving AI systems access to external, private, or changing knowledge.

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 11 | Vector Search | Core Concept | Nearest-neighbor search over embedding space. |
| 12 | Vector Databases | Tooling Map | Databases and indexes that store, filter, and query vectors. |
| 13 | Chunking Strategies | Implementation | Split documents for retrieval without losing meaning or structure. |
| 14 | Metadata Filtering | Implementation | Combine semantic search with exact constraints like tenant, date, source, or permissions. |
| 15 | Hybrid Search | Implementation | Blend keyword and vector search for better recall. |
| 16 | Query Rewriting | Implementation | Transform user questions into better retrieval queries without changing intent. |
| 17 | Reranking | Implementation | Re-score retrieved candidates before generation. |
| 18 | RAG Pipeline | Implementation | Ingest, embed, index, retrieve, rerank, generate, and cite. |
| 19 | Grounding And Citations | Production Checks | Connect generated answers back to source documents. |
| 20 | RAG Failure Modes | Production Checks | Hallucinated citations, stale indexes, bad chunks, missing filters, and low recall. |
| 21 | Vector DB Tooling Map | Tooling Map | Compare Pinecone, Weaviate, pgvector, Qdrant, Milvus, and FAISS by use case. |
| 22 | Reranker Tooling Map | Tooling Map | Compare cross-encoders, Cohere Rerank, bge-reranker, and provider rerank APIs. |

## Level 3: LLM Application Patterns

Reusable implementation and architecture patterns for turning model calls into useful product behavior.

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 23 | Direct LLM Call | Architecture Pattern | Use one prompt and one model call when the task is simple and bounded. |
| 24 | Prompt Chain | Architecture Pattern | Break a task into deterministic model steps with explicit inputs and outputs. |
| 25 | Deterministic Workflow | Architecture Pattern | Keep orchestration in code when predictability and auditability matter. |
| 26 | RAG Architecture | Architecture Pattern | Add retrieval, context assembly, answer generation, and source support around the model. |
| 27 | Tool-Using Application | Architecture Pattern | Combine model reasoning with controlled API, database, or function calls. |
| 28 | Output Validation | Implementation | Validate schema, policy, format, and business constraints before acting. |
| 29 | Caching For LLM Apps | Implementation | Cache deterministic parts without serving stale or unsafe answers. |
| 30 | LLM Routing | Implementation | Route by task, cost, latency, risk, or model capability. |
| 31 | Multi-Model Systems | Architecture Pattern | Combine small, large, multimodal, embedding, reranking, and judge models. |
| 32 | Memory Architecture | Architecture Pattern | Separate conversation state, short-term state, long-term memory, and retrieval. |

## Level 4: Evaluation And Quality

Evaluation concepts and frameworks for measuring behavior instead of relying on vibes.

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 33 | LLM Evals | Eval Pattern | Measure behavior with examples, rubrics, thresholds, and repeatable checks. |
| 34 | Golden Datasets | Eval Pattern | Build stable examples for regression and quality checks. |
| 35 | Retrieval Evals | Eval Pattern | Measure recall, precision, MRR, nDCG, and answer support. |
| 36 | LLM-as-a-Judge | Eval Pattern | Use model graders carefully with rubrics and calibration. |
| 37 | Regression Testing For LLM Apps | Eval Pattern | Catch prompt, model, retrieval, and tool regressions before release. |
| 38 | Offline vs Online Evals | Eval Pattern | Separate pre-release quality checks from live behavior monitoring. |
| 39 | Eval Tooling Map | Tooling Map | Compare eval tools by dataset management, scorers, experiments, CI, and monitoring. |
| 40 | DeepEval | Framework Notes | Practical eval framework for LLM app testing. |
| 41 | Ragas | Framework Notes | RAG-focused evaluation for faithfulness, answer relevance, context precision, and context recall. |
| 42 | promptfoo | Framework Notes | Test prompts, providers, model outputs, regressions, and red-team cases from config. |
| 43 | Braintrust | Framework Notes | Run experiments, datasets, scorers, CI evals, and online quality monitoring. |
| 44 | Phoenix | Framework Notes | Combine tracing, datasets, experiments, and LLM/RAG evals for debugging and improvement. |
| 45 | TruLens | Framework Notes | Evaluate RAG and agents with groundedness, context relevance, answer relevance, and runtime feedback. |
| 46 | Giskard | Framework Notes | Test, evaluate, and red-team LLM agents for security and business failures. |
| 47 | OpenAI Evals | Framework Notes | Build custom evals and benchmark model/system behavior with reusable eval templates. |

## Level 5: Production Operations

Operational practices for reliability, observability, cost, latency, and safe change management.

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 48 | LLM Observability | Production Checks | Track quality, latency, cost, errors, traces, and user feedback. |
| 49 | Tracing LLM Calls | Production Checks | Follow prompts, retrieval, tools, and model calls across a request. |
| 50 | Prompt And Version Tracking | Production Checks | Version prompts, models, schemas, retrieval configs, and eval baselines. |
| 51 | Latency And Cost Optimization | Production Checks | Reduce tokens, calls, retries, and expensive model usage. |
| 52 | Fallbacks And Retries | Production Checks | Handle timeouts, provider errors, invalid outputs, and degraded modes. |
| 53 | Rate Limits And Backpressure | Production Checks | Protect the app when users, providers, or queues spike. |
| 54 | Prompt And Model Release Gates | Production Checks | Promote AI changes only after eval, safety, latency, and rollback checks pass. |
| 55 | Online Quality Monitoring | Production Checks | Track live behavior with feedback, sampled reviews, alerts, and drift signals. |
| 56 | Production AI Architecture Checklist | Production Checks | End-to-end readiness checklist for real AI applications. |

## Level 6: Security And Governance

Controls for protecting users, data, tools, tenants, providers, and regulated workflows.

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 57 | Prompt Injection | Security Pattern | Treat retrieved/user text as untrusted instructions. |
| 58 | Data Leakage | Security Pattern | Prevent sensitive data from entering prompts, logs, outputs, or tools. |
| 59 | PII Redaction | Security Pattern | Detect, transform, or block sensitive personal data. |
| 60 | Secure Tool Calling | Security Pattern | Authorize tool use, scope inputs, and review side effects. |
| 61 | Guardrails | Security Pattern | Layer validation, policies, filters, and fallback behavior. |
| 62 | Policy Enforcement | Security Pattern | Convert rules into runtime checks and auditable decisions. |
| 63 | Data Residency And Privacy | Security Pattern | Design around where data is stored, processed, logged, retained, and sent to providers. |
| 64 | Tenant Isolation For AI | Security Pattern | Isolate prompts, indexes, tools, logs, rate limits, and permissions by tenant. |
| 65 | Audit Trails For AI Actions | Security Pattern | Record model decisions, tool calls, approvals, and evidence for review. |

## Level 7: Agents And Orchestration

Agent concepts and orchestration patterns for dynamic tasks, tool use, and multi-step workflows.

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 66 | Agents | Core Concept | A model-driven loop that plans, calls tools, observes, and continues. |
| 67 | Agent Loop | Implementation | The runtime cycle: input, plan, tool call, observation, stop condition. |
| 68 | Planning vs Execution | Core Concept | Separate deciding what to do from doing it safely. |
| 69 | Tool Selection | Implementation | Choose tools based on schema, context, permissions, and task fit. |
| 70 | Memory In Agents | Implementation | Distinguish context, short-term state, long-term memory, and retrieval. |
| 71 | Agentic RAG | Architecture Pattern | Let agents plan retrieval steps, refine queries, and inspect sources. |
| 72 | Single-Agent System | Architecture Pattern | Use one agent when dynamic decisions are needed inside a bounded domain. |
| 73 | Multi-Agent Systems | Architecture Pattern | Coordinate specialized agents without adding unnecessary complexity. |
| 74 | Sequential Agent Orchestration | Architecture Pattern | Chain specialized agents in a known order for staged work. |
| 75 | Concurrent Agent Orchestration | Architecture Pattern | Run agents in parallel and aggregate their independent results. |
| 76 | Handoff Agent Orchestration | Architecture Pattern | Route work to the right specialist when the needed expertise emerges during the task. |
| 77 | Evaluator-Optimizer Loop | Architecture Pattern | Use a generator and checker loop to improve output against acceptance criteria. |
| 78 | Human-in-the-Loop | Production Checks | Add review points for risky, costly, or irreversible actions. |

## Level 8: Architecture And System Design

System-level architecture patterns and decisions that define how AI applications are composed, scaled, and governed.

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 79 | Compound AI Systems | Architecture Pattern | Compose retrieval, tools, models, validators, state, and observability instead of relying on one prompt. |
| 80 | AI Gateway | Architecture Pattern | Centralize provider access, routing, rate limits, logging, policy, and fallbacks. |
| 81 | Model Serving Architecture | Architecture Pattern | Route traffic through gateways, queues, model servers, caches, and observability. |
| 82 | Multi-Tenant AI Systems | Architecture Pattern | Isolate data, prompts, tools, indexes, rate limits, and logs by tenant. |
| 83 | Human-in-the-Loop Architecture | Architecture Pattern | Add review, approval, escalation, and audit trails around risky AI actions. |
| 84 | Guardrails Architecture | Architecture Pattern | Place validation and policy checks around inputs, context, tools, and outputs. |
| 85 | Build vs Buy For AI Infrastructure | Production Checks | Decide what to own versus delegate to providers, frameworks, or managed services. |
| 86 | Provider Abstraction | Architecture Pattern | Avoid accidental lock-in with adapters, routing, common schemas, and fallback paths. |
| 87 | AI Architecture Decision Matrix | Production Checks | Choose patterns based on task complexity, latency, cost, risk, data sensitivity, and eval maturity. |

## Level 9: Deployment And Infrastructure

Deployment paradigms for where inference runs, how work is executed, and how model/system changes reach production.

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 88 | API Models vs Self-Hosted Models | Deployment Paradigm | Decide between managed APIs and self-hosting based on cost, latency, privacy, control, and operations. |
| 89 | Hosted Model Providers | Tooling Map | Compare managed providers by model capability, reliability, regions, pricing, limits, and ecosystem. |
| 90 | Self-Hosted Inference | Deployment Paradigm | Serve open-weight models with GPUs, batching, quantization, autoscaling, and monitoring. |
| 91 | Hybrid Model Deployment | Deployment Paradigm | Combine hosted APIs, self-hosted models, and fallback providers in one system. |
| 92 | Online Inference | Deployment Paradigm | Serve low-latency request/response workloads through endpoints. |
| 93 | Batch Inference | Deployment Paradigm | Run scheduled or bulk model work across stored data. |
| 94 | Streaming Inference | Deployment Paradigm | Score or enrich continuous event streams close to real time. |
| 95 | Async AI Workflows | Deployment Paradigm | Use queues, jobs, callbacks, and status tracking for slow or expensive AI tasks. |
| 96 | Serverless AI Inference | Deployment Paradigm | Use event-triggered execution for spiky or intermittent AI workloads. |
| 97 | Edge And On-Device AI | Deployment Paradigm | Run models locally when latency, privacy, offline behavior, or cost requires it. |
| 98 | Private/VPC AI Deployment | Deployment Paradigm | Keep inference, logs, data, and providers inside restricted network boundaries. |
| 99 | Multi-Region AI Deployment | Deployment Paradigm | Design for latency, resilience, failover, and data residency across regions. |
| 100 | Model Rollout Strategies | Deployment Paradigm | Use canary, shadow, blue-green, A/B, rollback, and fallback to release AI changes safely. |

## Level 10: Frameworks, Tools, And Protocols

Frameworks help build systems, tools provide infrastructure or workflows, and protocols standardize integration.

| # | Topic | Badge | Teaching Angle |
|---:|---|---|---|
| 101 | LangChain | Framework Notes | Components, chains, tools, retrievers, and where the abstraction helps. |
| 102 | LlamaIndex | Framework Notes | Data connectors, indexes, retrieval abstractions, and RAG workflows. |
| 103 | OpenAI Agents SDK | Framework Notes | Agent runtime, tools, handoffs, tracing, and guardrails. |
| 104 | Semantic Kernel | Framework Notes | Orchestrate AI functions, plugins, planners, and enterprise integrations. |
| 105 | CrewAI | Framework Notes | Build role-based multi-agent workflows when the abstraction fits the task. |
| 106 | AutoGen | Framework Notes | Coordinate conversational and multi-agent workflows for research and automation. |
| 107 | DSPy | Framework Notes | Optimize prompts and LM programs with examples, metrics, and compilation. |
| 108 | Model Context Protocol | Protocol | Standardize how apps expose tools, resources, and context to AI systems. |
| 109 | Agent2Agent Protocol | Protocol | Standardize how independent agents discover each other, communicate, delegate tasks, and collaborate. |
| 110 | MCP vs A2A | Core Concept | Use MCP for tools/data access and A2A for agent-to-agent communication. |
| 111 | AI Gateway Tooling Map | Tooling Map | Compare gateways and proxy layers for routing, policy, observability, and provider abstraction. |
| 112 | Serving Tooling Map | Tooling Map | Compare vLLM, TGI, TensorRT-LLM, Ollama, Ray Serve, KServe, and managed endpoints. |
| 113 | Observability Tooling Map | Tooling Map | Compare tracing, eval, feedback, cost, and monitoring tools for LLM systems. |

## Level 11: AI Architecture Anti-Patterns

Use one or more posts for these anti-patterns. Cards should classify failure modes by system layer instead of presenting them as random warnings.

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
| AS111 | Context stuffing | Context | Dumps too much text into the prompt instead of selecting, ranking, compressing, and validating context. |
| AS112 | Agent-for-everything | Agents | Adds loops, tools, cost, latency, and nondeterminism where a direct call or chain would be more reliable. |
| AS113 | Fine-tuning instead of fixing retrieval | Model Strategy | Trains behavior when the real problem is missing, stale, or poorly retrieved knowledge. |
| AS114 | Vector DB as memory | State | Treats semantic retrieval as durable user memory without identity, recency, permissions, or deletion semantics. |
| AS115 | No rollback strategy | Deployment | Releases model, prompt, or retrieval changes without a safe fallback or previous known-good version. |

## Notes

Start with Embeddings before RAG. RAG becomes much easier to explain when the audience already understands embeddings, vector search, chunking, and reranking.

The roadmap is not only a list of topics. Each item should have one clear card angle: core concept, implementation, architecture pattern, deployment paradigm, eval pattern, security pattern, tooling map, framework notes, protocol, production check, or anti-pattern.

Keep the series educational rather than interview-branded. The cards should help with technical interview preparation indirectly by building strong mental models and production reasoning.
