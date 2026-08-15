# AWS Lambda - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/lambda/latest/dg/welcome.html
- https://docs.aws.amazon.com/lambda/latest/dg/concepts-basics.html
- https://docs.aws.amazon.com/lambda/latest/dg/concepts-how-lambda-runs-code.html
- https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtime-environment.html
- https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for AWS Lambda.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_AWS-Lambda_64.svg`

The header accent color must be based on the official icon background color `#ED7100`.

## Header

AWS Lambda
Deep Dive

## KEY TAKEAWAYS

- Functions run in response to events or API calls.
- The handler is the entry point for event processing.
- Runtimes relay events and responses between Lambda and code.
- Execution roles grant AWS resource permissions.
- Queue and stream sources use event source mappings.

## CORE MENTAL MODEL

Event + runtime + handler + execution role -> serverless action

## WHEN TO USE IT

- Event-driven application logic.
- API backends with API Gateway.
- File, queue, and stream processing.
- Scheduled jobs and automation.

## WATCH OUT

- Keep handlers idempotent for retries and duplicates.
- Cold starts can affect first-invocation latency.
- Execution role permissions must match resource access.

## SECURITY & OPERATIONS

- Use least-privilege execution roles.
- Monitor logs and metrics with CloudWatch.
- Configure timeouts, memory, and environment variables.
- Use event source mappings for queues and streams.

## KNOWLEDGE CHECK

- Need API endpoint -> connect API Gateway to Lambda.
- Need queue processing -> use SQS event source mapping.
- Need AWS access -> grant permissions in the execution role.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official Lambda docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official Lambda icon color `#ED7100`.
