# Chunking: where RAG quality starts

Chunking is one of the most practical decisions in a RAG system. Before embeddings, vector databases, rerankers, or prompts can help, the source material has to be split into units that are actually useful to retrieve.

Bad chunks create weak retrieval. They can cut off meaning, mix unrelated topics, duplicate too much content, or lose the source metadata needed to ground an answer.

Good chunking is content-aware:

- Policies, docs, and legal text often need section-aware chunks.
- Code and APIs need structure-aware chunks.
- FAQs and support content often work better as question-answer units.
- Long research or product docs usually need hierarchy, overlap, and source links.

The goal is not to find a universal chunk size. The goal is to preserve enough meaning for retrieval while staying small enough to fit the model's context budget.

In production, chunking should be evaluated like any other retrieval decision: test recall, inspect missed answers, tune overlap, track source IDs, and rerun evals when documents or parsers change.

What usually breaks first in your RAG pipeline: chunk size, missing metadata, bad parsing, or weak reranking?

#AIEngineering #RAG #VectorSearch #LLM #SoftwareEngineering
