# AI Engineering Concepts Roadmap

Recommended publishing order for the AI Engineering Concepts LinkedIn series.

The sequence starts with fundamentals, then moves into RAG, evaluation, production operations, security, agents, and senior-level architecture tradeoffs.

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
- Post copy: concise and practical.

Suggested cadence options:

- 1 post per day: safest for consistency and polish.
- 3 posts per day: possible if grouped by level or theme.
- Mixed cadence: publish fundamentals faster, then slow down for advanced topics.

If publishing 3 posts per day, avoid posting three advanced topics together. A good pattern is:

```text
Post 1: foundation or concept
Post 2: applied pattern
Post 3: production, security, or failure mode
```

## Level 1: Foundations

1. Embeddings
2. Tokenization
3. Prompt Engineering
4. Structured Outputs
5. Function Calling / Tool Calling
6. Context Window
7. Context Engineering

## Level 2: Retrieval And RAG

8. Vector Search
9. Chunking Strategies
10. Metadata Filtering
11. Hybrid Search
12. Reranking
13. RAG Pipeline
14. RAG Failure Modes
15. Grounding And Citations

## Level 3: Evaluation

16. LLM Evals
17. Golden Datasets
18. LLM-as-a-Judge
19. DeepEval
20. Regression Testing For LLM Apps
21. Offline vs Online Evals

## Level 4: Production

22. LLM Observability
23. Tracing LLM Calls
24. Prompt And Version Tracking
25. Latency And Cost Optimization
26. Caching For LLM Apps
27. Fallbacks And Retries
28. Rate Limits And Backpressure

## Level 5: Security

29. Prompt Injection
30. Data Leakage
31. PII Redaction
32. Guardrails
33. Policy Enforcement
34. Output Validation
35. Secure Tool Calling

## Level 6: Agents

36. Agents
37. Agent Loop
38. Planning vs Execution
39. Memory In Agents
40. Tool Selection
41. Human-in-the-Loop
42. Multi-Agent Systems

## Level 7: Frameworks And Pro Architecture

43. LangChain
44. LlamaIndex
45. OpenAI Agents SDK
46. Model Context Protocol
47. Agentic RAG
48. AI Gateway
49. LLM Routing
50. Multi-Model Systems
51. AI System Design Tradeoffs
52. Production AI Architecture Checklist

## Notes

Start with Embeddings before RAG. RAG becomes much easier to explain when the audience already understands embeddings, similarity search, chunking, and reranking.

Keep the series educational rather than interview-branded. The cards should help with technical interview preparation indirectly by building strong mental models and production reasoning.
