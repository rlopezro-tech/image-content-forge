# AWS Step Functions - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html
- https://docs.aws.amazon.com/step-functions/latest/dg/concepts-statemachines.html
- https://docs.aws.amazon.com/step-functions/latest/dg/workflow-states.html
- https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html
- https://docs.aws.amazon.com/step-functions/latest/dg/integrate-optimized.html
- https://docs.aws.amazon.com/step-functions/latest/dg/concepts-error-handling.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for AWS Step Functions.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_AWS-Step-Functions_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

AWS Step Functions
Deep Dive

## KEY TAKEAWAYS

- Workflows are state machines defined with Amazon States Language.
- Executions are running instances of a state machine.
- Task states call AWS services, activities, Lambda functions, or HTTPS APIs.
- Flow states handle choice, wait, map, pass, succeed, fail, and parallel behavior.
- Standard and Express workflows support different duration, rate, and execution semantics.

## CORE MENTAL MODEL

Input + state machine + task and flow states -> execution history + result

## WHEN TO USE IT

- Coordinate multiple services in a reliable workflow.
- Model long-running or auditable business processes.
- Add retries, fallback paths, waits, and parallel branches.
- Orchestrate data, machine learning, or approval pipelines.

## WATCH OUT

- Standard and Express workflows are optimized for different workloads.
- Express workflows only support Request Response service integrations.
- Retries count as state transitions.
- Callback task tokens must be returned from the same AWS account.
- IAM permissions must cover each integrated service action.

## SECURITY & OPERATIONS

- Use an execution role with least-privilege permissions.
- Let Step Functions generate IAM policy templates for integrated services when possible.
- Monitor executions, errors, and throttles with CloudWatch.
- Use Retry and Catch to handle expected failures.
- Use EventBridge for execution events and operational automation.

## KNOWLEDGE CHECK

- Need long-running auditability -> choose Standard workflows.
- Need high-event-rate short workflows -> choose Express workflows.
- Need wait for a job -> use `.sync` where supported.
- Need external approval -> use callback with task token.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official Step Functions docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official Step Functions icon color `#E7157B`.
