# Amazon Bedrock AgentCore - Deep Dive Card Prompt

Create a 1080x1350 vertical LinkedIn technical study card for Amazon Bedrock AgentCore.

Visible card text must be in English. Use the official AWS Architecture Icon `shared/assets/aws-icons/Arch_Amazon-Bedrock-AgentCore_64.svg`.

## Card Structure

1. Header: Amazon Bedrock AgentCore, Deep Dive
2. KEY TAKEAWAYS:
   - AgentCore is modular: Runtime, Memory, Gateway, Identity, Observability, tools, policy, registry, evaluations, and optimization
   - It works with open-source agent frameworks and foundation models in or outside Amazon Bedrock
   - Runtime and Harness address production concerns such as session isolation, state, scaling, tools, and observability
   - Gateway turns APIs, Lambda functions, and existing services into MCP-compatible tools
   - Identity and Policy help govern what agents and tools can access
3. CORE MENTAL MODEL:
   Agent code or harness configuration + isolated runtime + governed tools + memory + observability = production agent platform
4. WHEN TO USE IT:
   - You need agents that run securely at scale
   - You want framework and model flexibility
   - You need managed memory, tools, identity, and observability
   - You are building an internal agent platform
5. WATCH OUT:
   - Choose managed Harness vs code-based Runtime intentionally
   - Tool access needs explicit permissions and policy boundaries
   - Long-running agents need cost, session, and trace controls
   - Agent quality requires evaluation, not just manual testing
6. SECURITY & OPERATIONS:
   - IAM and identity providers
   - AgentCore Identity and Policy
   - Gateway ingress and egress auth
   - CloudWatch and OpenTelemetry observability
   - Evaluations, A/B tests, and versioned rollout
7. KNOWLEDGE CHECK:
   - Need no-code orchestration? Use Harness
   - Need custom framework code? Use Runtime
   - Need controlled tool access? Use Gateway + Policy
   - Need persistent context? Use Memory

## Official Sources

- https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/what-is-bedrock-agentcore.html
- https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/harness.html
- https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/gateway.html
- https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/develop-agents.html
- https://docs.aws.amazon.com/prescriptive-guidance/latest/govern-architect-agentic-ai/agents-layer.html
- https://aws.amazon.com/architecture/icons/
