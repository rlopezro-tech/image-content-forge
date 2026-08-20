# Tool Calling: how models interact with real systems

Tool calling, also called function calling, lets a model request external actions through typed schemas. The model does not execute the function directly; your application receives the tool request, validates it, runs the function, and returns the result.

That distinction matters. Tool calling is not just "give the model an API." It is an interface contract between probabilistic reasoning and deterministic software.

Three implementation details matter:

- Define typed schemas with clear names, arguments, and descriptions.
- Validate arguments, permissions, and side effects before execution.
- Handle tool errors, retries, timeouts, and idempotency.

The tooling stack is easier to reason about by category: provider APIs like OpenAI, Anthropic, or Gemini; frameworks like LangChain, Vercel AI SDK, or Agents SDKs; and validators like JSON Schema, Zod, or Pydantic.

The common mistake is trusting the model because the schema exists. In production, the schema helps the model choose the tool, but the application still owns authorization, validation, execution, and recovery.

What is the first tool call you would never let run without a human or policy check?

#AIEngineering #ToolCalling #AIAgent #LLM #SoftwareEngineering
