# Amazon Bedrock Deep Dive Diagram Prompt

## Official AWS Sources

- https://aws.amazon.com/bedrock/
- https://docs.aws.amazon.com/bedrock/
- https://docs.aws.amazon.com/bedrock/latest/userguide/inference.html
- https://docs.aws.amazon.com/bedrock/latest/userguide/agents.html
- https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base.html
- https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical deep-dive infographic for Amazon Bedrock.

Final output format: PNG.

Recommended canvas: 1080 x 1350 px.

All visible text must be in English.

Use the official Amazon Bedrock AWS Architecture Icon.

### Header

Amazon Bedrock

Deep Dive

### KEY TAKEAWAYS

- Bedrock is the managed foundation-model platform for generative AI on AWS.
- Applications use Bedrock APIs for inference, agents, knowledge bases, guardrails, and evaluation.
- Knowledge Bases add Retrieval Augmented Generation with your data.
- Agents can use instructions, tools, and data sources to execute tasks.
- Guardrails evaluate user inputs and model responses for configured safeguards.

### CORE MENTAL MODEL

app prompt + model choice + optional context + safeguards -> managed inference -> generated response or action

### WHEN TO USE IT

- You need foundation models without managing inference infrastructure.
- You want model choice through AWS APIs.
- You are building RAG with enterprise data.
- You need agents that call tools or APIs.
- You want centralized guardrails for generative AI applications.

### WATCH OUT

- Model capabilities, context windows, latency, and supported regions vary by model.
- RAG quality depends on ingestion, chunking, embeddings, retrieval, and prompt design.
- Guardrails add policy controls but do not replace application-level validation.
- Production apps still need observability, access control, testing, and cost controls.

### SECURITY & OPERATIONS

- Control access with IAM policies and service roles.
- Audit API activity with AWS CloudTrail.
- Monitor workloads with Amazon CloudWatch.
- Use encryption and private data handling patterns.
- Evaluate models and prompts before production rollout.

### KNOWLEDGE CHECK

- Need a simple generative API -> use model inference.
- Need answers from private docs -> use Knowledge Bases.
- Need task execution with tools -> use Agents.
- Need safety controls -> apply Guardrails.

### Visual Style

Use a clean AWS-inspired technical infographic style with a white or very light background, thin blue and purple borders, subtle shadows, readable mobile typography, and consistent spacing.

### Source Note

Add a small source note: "Sources: Official AWS Documentation and AWS Architecture Icons".

## Accuracy Checklist

- Service definition is confirmed by official AWS documentation.
- Workflow steps match official AWS documentation.
- Integrations are confirmed by official AWS documentation.
- Benefits are supported by official AWS documentation.
- Use cases are realistic and AWS-aligned.
- All visible text is in English.
- AWS service names use official capitalization.
- Final format is PNG.
- Canvas is vertical and readable on social media feeds.
