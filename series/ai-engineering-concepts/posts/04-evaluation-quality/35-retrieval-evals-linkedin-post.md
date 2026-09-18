# If the right source never reaches the model, the prompt cannot fix it

Retrieval evals measure the part of a RAG system that decides which information enters context. They help distinguish a generation problem from a retrieval problem before teams start rewriting prompts or changing models.

For each representative query, identify the documents or chunks that should be found. Run the retrieval pipeline, inspect the ranked results, and measure whether relevant context appears where it is needed.

Useful checks include:

- Recall@K: did the relevant source appear in the candidate set?
- Precision@K: how much of the retrieved context is actually useful?
- MRR and nDCG: did the best sources rank near the top?
- Filter and permission checks: did the system retrieve only allowed content?

When retrieval misses, the fix may be query rewriting, chunking, metadata, hybrid search, reranking, or freshness—not a larger model.

#AIEngineering #RAG #RetrievalEvals #LLMEvals #SoftwareEngineering
