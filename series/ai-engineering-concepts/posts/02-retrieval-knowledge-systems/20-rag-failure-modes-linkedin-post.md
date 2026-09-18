# Broken RAG usually starts with broken retrieval

RAG fails when retrieval is weak, context is noisy, filters are wrong, or the sources are stale.

The model can only ground answers in the evidence it receives. That is why many RAG issues are not generation problems first. They are retrieval problems that show up at answer time.

Three practical rules:

- Test retrieval before blaming generation.
- Track recall, grounding, and citation support.
- Fix chunking, filters, and freshness first.

In production RAG, the fastest improvement often comes from debugging the retrieval path, not tuning the prompt in isolation.

#AIEngineering #RAG #Retrieval #LLM #SoftwareEngineering
