# Tokenization: the unit economics of LLM apps

Tokenization is the step that turns text into the smaller units a model can process. Models do not read "words" the way humans do; they read and generate tokens.

That matters because tokens shape the real limits of an AI system: context window usage, latency, cost, truncation risk, and how much retrieved context you can safely include in a prompt.

Three practical implementation points:

- Count tokens before sending large prompts.
- Budget instructions, retrieved context, and output separately.
- Handle overflow with chunking, summarization, compression, or stricter retrieval.

The tooling stack is easier to reason about by category: tokenizers like tiktoken, Hugging Face Tokenizers, or SentencePiece; counting helpers in provider SDKs like OpenAI or Anthropic; and splitters from LangChain, LlamaIndex, or custom chunking code.

The common mistake is treating token limits as a UI error. In production, token budgeting is an architecture concern because it affects retrieval quality, cost, latency, and whether the model even sees the information it needs.

Where do you usually enforce token budgets: before retrieval, before the model call, or both?

#AIEngineering #Tokenization #LLM #GenerativeAI #SoftwareEngineering
