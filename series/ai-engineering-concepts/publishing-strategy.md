# AI Engineering Concepts Publishing Strategy

Use this file to decide how to publish the series while learning and producing new cards. The roadmap defines the topic universe; this file defines practical publishing patterns.

## Core Recommendation

Start with one carousel per week.

Recommended shape:

```text
3-5 images per carousel
1 macro theme per week
1 clear promise per post
```

This keeps quality high, gives each topic room to breathe, and avoids burning through the roadmap too fast.

## Recommended Cadence

Best default:

```text
1 carousel per week
3-5 images per carousel
```

Optional add-on:

```text
1 short text post during the week
```

Use the text post for a practical lesson, a question, a mini case study, or a short reflection from building the cards.

Avoid as default:

```text
3 posts per day
```

That cadence can dilute quality, saturate the audience, and make it harder to learn from engagement signals.

## Publishing Patterns

### Pattern 1: Category Carousel

Group concepts from the same family.

Use when the goal is to help the audience build vocabulary and organize related ideas.

Example: Core Concepts

```text
1. Embeddings
2. Tokenization
3. Context Window
4. Structured Outputs
5. Tool Calling
```

Example: Security Patterns

```text
1. Prompt Injection
2. Data Leakage
3. PII Redaction
4. Output Validation
5. Secure Tool Calling
```

### Pattern 2: Flow Carousel

Show a practical system flow from concept to implementation.

Use when the topic has a natural sequence.

Example: Retrieval / RAG Flow

```text
1. Embeddings
2. Vector Search
3. Chunking Strategies
4. RAG Pipeline
5. RAG Failure Modes
```

Example: RAG In Production

```text
1. RAG
2. RAG Pipeline
3. Reranking
4. Grounding And Citations
5. RAG Failure Modes
```

### Pattern 3: Skill Stack Carousel

Mix different classifications to show what an AI Engineer actually needs for a job skill.

Use when the post should feel more senior and implementation-oriented.

Recommended structure:

```text
1. Mental Model
2. Implementation
3. Tooling Map
4. Eval Pattern / Production Checks
5. Security Pattern / Anti-Pattern
```

Example: Embeddings To Retrieval

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

Example: Eval Tooling

```text
1. DeepEval
2. Ragas
3. Braintrust
4. Phoenix
5. Eval Tooling Map
```

Example: Vector DB Tooling

```text
1. Pinecone
2. Weaviate
3. pgvector
4. FAISS
5. Vector DB Tooling Map
```

### Pattern 5: Anti-Pattern Carousel

Use one post to teach common mistakes.

Example: AI Architecture Anti-Patterns

```text
1. AS101-AS102: prompt-only architecture, no eval gate
2. AS103-AS104: unversioned behavior, blind RAG
3. AS105-AS106: unsafe tools, one-model-for-everything
4. AS107-AS108: sync long-running AI, no human review
5. AS109-AS110: accidental lock-in, logs-only observability
```

## Suggested First Six Weeks

### Week 1: Core AI Engineering Concepts

```text
1. Embeddings
2. Tokenization
3. Context Window
4. Structured Outputs
5. Tool Calling
```

### Week 2: Retrieval / RAG Foundations

```text
1. Vector Search
2. Vector Databases
3. Chunking Strategies
4. Hybrid Search
5. RAG
```

### Week 3: RAG Implementation

```text
1. RAG Pipeline
2. Metadata Filtering
3. Reranking
4. Grounding And Citations
5. RAG Failure Modes
```

### Week 4: Evaluation

```text
1. LLM Evals
2. Golden Datasets
3. Retrieval Evals
4. LLM-as-a-Judge
5. Offline vs Online Evals
```

### Week 5: Security

```text
1. Prompt Injection
2. Data Leakage
3. PII Redaction
4. Output Validation
5. Secure Tool Calling
```

### Week 6: AI Architecture

```text
1. API Models vs Self-Hosted Models
2. Fine-Tuning Decision Pattern
3. Model Serving Architecture
4. Human-in-the-Loop Architecture
5. AI Architecture Anti-Patterns
```

## Decision Rules While Learning

Use the roadmap flexibly. Do not force strict linear order if a new concept becomes more relevant.

Choose the next post using these rules:

- If a concept is foundational and blocks understanding, publish it earlier.
- If a topic has strong practical job relevance, group it into a skill stack carousel.
- If a tool is popular but the concept is not yet clear, publish the concept first.
- If several topics share the same audience pain, group them into a category carousel.
- If a topic feels too broad, split it into mental model, implementation, tools, evals, and production checks.
- If a card becomes too dense, keep the image simple and move detail into the LinkedIn post copy.

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
