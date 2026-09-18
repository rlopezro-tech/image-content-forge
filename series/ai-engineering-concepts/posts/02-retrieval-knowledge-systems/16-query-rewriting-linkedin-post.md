# Query rewriting improves retrieval before you change the model

Query rewriting transforms a user question into a better search query without changing the original intent.

That matters because many retrieval failures start before the model ever answers. The issue is often not generation. It is that the search query was too vague, too literal, or missing domain language.

Three practical rules:

- Preserve intent.
- Add domain terms, synonyms, and constraints.
- Keep the rewritten query grounded in the original question.

If your RAG system is missing relevant context, query rewriting is often a better fix than switching models.

#AIEngineering #RAG #QueryRewriting #Retrieval #SoftwareEngineering
