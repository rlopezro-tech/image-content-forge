# Context Window: the working memory of one model request

The context window is the token budget a model can read and write in a single request. It includes the system instructions, user message, chat history, retrieved documents, tool outputs, and the model's response.

The practical point: context is not infinite memory. Even with large context windows, you still need to decide what deserves space and what should be retrieved, summarized, compressed, or dropped.

Three implementation details matter:

- Reserve output space before filling the prompt with context.
- Rank, trim, or summarize low-value context before the model call.
- Separate conversation state, retrieval memory, and long-term storage.

In real AI systems, context window management affects quality, latency, and cost. A bigger window helps, but it does not remove the need for retrieval, token budgeting, evals, or good context packing.

The common mistake is adding everything "just in case." Better systems choose context deliberately.

What do you usually prioritize first when context gets tight: instructions, chat history, retrieved documents, or output budget?

#AIEngineering #ContextWindow #LLM #GenerativeAI #SoftwareEngineering
