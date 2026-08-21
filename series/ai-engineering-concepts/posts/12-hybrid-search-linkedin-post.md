# Hybrid search is how you stop forcing one retrieval method to do everything

Hybrid search combines keyword matching and vector similarity in the same retrieval flow. That matters because not every query is semantic. Some searches depend on exact names, IDs, error codes, or domain terms that vector search can miss.

The practical pattern is simple: let keyword search catch exact signals, let vector search catch paraphrases and meaning, then fuse or rerank both sets before generation.

Three things matter in production:

- Use keyword search for rare terms and exact matches.
- Use vector search for semantic recall.
- Normalize or rerank before sending results to the model.

If you are building RAG, hybrid search is often the step that makes retrieval feel much less brittle.

#AIEngineering #HybridSearch #RAG #VectorSearch #SoftwareEngineering
