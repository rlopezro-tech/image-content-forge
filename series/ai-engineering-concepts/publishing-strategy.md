# AI Engineering Concepts Publishing Strategy

Use this file to decide how to publish the series while learning and producing new cards. The roadmap defines the topic universe; this file defines the public learning path.

## Main Strategy

Position the series as a progressive public guide:

```text
AI Engineering from zero to production
```

The tone should feel like documenting the path from fundamentals to real systems:

- learn the concept
- understand how it is implemented
- learn the common tools
- evaluate quality
- think about production, security, and architecture

This should not feel like a random list of AI topics. Each post should help someone move one step closer to real AI Engineer judgment.

## Core Recommendation

Publish by seasons.

Recommended default:

```text
1 carousel per week
3-5 images per carousel
1 macro theme per week
1 clear promise per post
```

Optional add-on:

```text
1 short text post during the week
```

Use the text post for:

- what you learned while building the carousel
- a practical mistake to avoid
- a question for other engineers
- a short implementation note
- a tool or architecture tradeoff

Avoid as default:

```text
3 posts per day
```

That cadence can dilute quality, saturate the audience, and make it harder to learn from engagement signals.

## Narrative Positioning

Use this framing when useful:

```text
I am building a practical AI Engineering visual guide.
The goal: understand concepts, tools, production patterns, and mistakes from zero to real systems.
```

The series should show:

- conceptual clarity
- practical implementation judgment
- real tools and frameworks
- eval and production awareness
- security thinking
- architecture tradeoffs

## Season Plan

### Season 1: Foundations

Goal: give beginners the language needed before RAG, agents, evals, or architecture.

Carousel:

```text
1. Embeddings
2. Tokenization
3. Context Window
4. Structured Outputs
5. Tool Calling
```

Post angle:

```text
5 concepts every AI Engineer needs before building RAG or agents.
```

### Season 2: Retrieval And RAG

Goal: move from concepts to retrieval systems.

Carousel 1:

```text
1. Vector Search
2. Vector Databases
3. Chunking Strategies
4. Hybrid Search
5. RAG
```

Carousel 2:

```text
1. RAG Pipeline
2. Metadata Filtering
3. Reranking
4. Grounding And Citations
5. RAG Failure Modes
```

### Season 3: Evaluation

Goal: show that AI Engineering is measured behavior, not just API calls.

Carousel 1:

```text
1. LLM Evals
2. Golden Datasets
3. Retrieval Evals
4. LLM-as-a-Judge
5. Offline vs Online Evals
```

Carousel 2:

```text
1. DeepEval
2. Ragas
3. Phoenix
4. Braintrust
5. Eval Tooling Map
```

### Season 4: Production

Goal: teach the operational layer that separates demos from real systems.

Carousel:

```text
1. LLM Observability
2. Tracing LLM Calls
3. Prompt And Version Tracking
4. Latency And Cost Optimization
5. Fallbacks And Retries
```

### Season 5: Security

Goal: teach the security patterns needed before trusting AI systems with real data or actions.

Carousel:

```text
1. Prompt Injection
2. Data Leakage
3. PII Redaction
4. Output Validation
5. Secure Tool Calling
```

### Season 6: Architecture

Goal: move into senior-level system design decisions.

Carousel:

```text
1. API Models vs Self-Hosted Models
2. Fine-Tuning Decision Pattern
3. Model Serving Architecture
4. Human-in-the-Loop Architecture
5. AI Architecture Anti-Patterns
```

## Publishing Patterns

Use these patterns as flexible formats. Do not force every week into the same shape.

### Pattern 1: Category Carousel

Group concepts from the same family.

Use when the goal is to help the audience build vocabulary and organize related ideas.

Example:

```text
1. Embeddings
2. Tokenization
3. Context Window
4. Structured Outputs
5. Tool Calling
```

### Pattern 2: Flow Carousel

Show a practical system flow from concept to implementation.

Use when the topic has a natural sequence.

Example:

```text
1. Embeddings
2. Vector Search
3. Chunking Strategies
4. RAG Pipeline
5. RAG Failure Modes
```

### Pattern 3: Skill Stack Carousel

Mix different classifications to show what an AI Engineer actually needs for a job skill.

Recommended structure:

```text
1. Mental Model
2. Implementation
3. Tooling Map
4. Eval Pattern / Production Checks
5. Security Pattern / Anti-Pattern
```

Example:

```text
1. Embeddings - Mental Model
2. Vector Search - Mental Model
3. Vector Databases - Tooling Map
4. Retrieval Evals - Eval Pattern
5. Blind RAG - Production Checks
```

### Pattern 4: Tooling Carousel

Compare tools by category and use case.

Use after the audience already understands the underlying concept.

Example:

```text
1. DeepEval
2. Ragas
3. Braintrust
4. Phoenix
5. Eval Tooling Map
```

### Pattern 5: Anti-Pattern Carousel

Use one post to teach common mistakes.

Example:

```text
1. AS101-AS102: prompt-only architecture, no eval gate
2. AS103-AS104: unversioned behavior, blind RAG
3. AS105-AS106: unsafe tools, one-model-for-everything
4. AS107-AS108: sync long-running AI, no human review
5. AS109-AS110: accidental lock-in, logs-only observability
```

## Decision Rules While Learning

Use the roadmap flexibly. Do not force strict linear order if a new concept becomes more relevant.

Choose the next post using these rules:

- If a concept is foundational and blocks understanding, publish it earlier.
- If a topic has strong practical job relevance, group it into a skill stack carousel.
- If a tool is popular but the concept is not yet clear, publish the concept first.
- If several topics share the same audience pain, group them into a category carousel.
- If a topic feels too broad, split it into mental model, implementation, tools, evals, production checks, and security.
- If a card becomes too dense, keep the image simple and move detail into the LinkedIn post copy.
- If you discover a missing concept while learning, add it to the roadmap or generate it as a one-off card before continuing.
- If audience comments reveal confusion, publish a clarifying concept even if it was not planned.

## Adding New Concepts On The Fly

It is expected that new concepts will appear while learning.

When a missing concept appears, decide what it is:

```text
Mental Model
Implementation
Tooling Map
Production Checks
Eval Pattern
Security Pattern
Framework Notes
```

Then decide where it belongs:

- Add it to the current season if it helps the current topic.
- Add it to a future season if it is useful but not urgent.
- Create a one-off post if it answers an immediate audience question.
- Replace a weaker planned card if the new concept is more practical.

Do not treat the roadmap as fixed. Treat it as the current best map.

## Post Copy Pattern

Use the image to teach structure. Use the post text to add practical judgment.

Recommended post structure:

```text
Hook
Why this matters in real AI systems
What the carousel covers
3-5 practical takeaways
Focused question or discussion prompt
Hashtags
```

Hashtags:

- Use maximum 5.
- Pick topic-specific hashtags.
- Do not use the same generic set on every post.

Avoid:

- Engagement bait.
- Hype.
- Interview-branded framing.
- Tool lists without categories.
- Claims that are not supported by the card or source material.

## Practical Publishing Rule

The goal is not to publish the roadmap mechanically.

The goal is to build a visible body of work that shows:

- Conceptual clarity.
- Real implementation judgment.
- Awareness of tools and tradeoffs.
- Production and security thinking.
- Ability to explain AI systems simply.

Publish slowly enough that each carousel is useful, but consistently enough that the series becomes a recognizable learning path.
