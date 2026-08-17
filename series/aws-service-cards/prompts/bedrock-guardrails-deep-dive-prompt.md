# Amazon Bedrock Guardrails - Deep Dive Card Prompt

Create a 1080x1350 vertical LinkedIn technical study card for Amazon Bedrock Guardrails.

Visible card text must be in English. Use the official AWS Architecture Icon `shared/assets/aws-icons/Arch_Amazon-Bedrock_64.svg`.

## Card Structure

1. Header: Amazon Bedrock Guardrails, Deep Dive
2. KEY TAKEAWAYS:
   - Guardrails evaluate user inputs and model responses against configured policies
   - They can be applied during inference or independently with the ApplyGuardrail API
   - Policies include content filters, denied topics, word filters, sensitive information filters, contextual grounding checks, image filters, and automated reasoning checks
   - If input is blocked, model inference is discarded; if output violates policy, it can be blocked or masked
   - Guardrails can also be enforced at account or organization level with AWS Organizations Bedrock policies
3. CORE MENTAL MODEL:
   App content + guardrail policies + inference path = safe response decision
4. WHEN TO USE IT:
   - You need consistent AI safety controls
   - You handle sensitive information
   - You want prompt attack and harmful content filtering
   - You need org-wide model invocation safeguards
5. WATCH OUT:
   - Guardrails complement, not replace, app authorization and validation
   - Policy choices affect latency, behavior, and cost
   - Standard and Classic safeguard tiers differ by features and language support
   - Enforced guardrails require correct ApplyGuardrail permissions
6. SECURITY & OPERATIONS:
   - IAM permissions and resource-based policies
   - Guardrail versions and draft testing
   - Cross-Region inference profiles
   - CloudWatch metrics and monitoring
   - Account and organization enforcement
7. KNOWLEDGE CHECK:
   - Need moderation during model call? Attach guardrail to inference
   - Need moderation outside Bedrock inference? Call ApplyGuardrail
   - Need PII controls? Use sensitive information filters
   - Need org-wide defaults? Use guardrail enforcement

## Official Sources

- https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html
- https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-how.html
- https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-use-independent-api.html
- https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-resource-based-policies.html
- https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-enforcements.html
- https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-tiers.html
- https://aws.amazon.com/architecture/icons/
