# Amazon EventBridge - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-rules.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus-perms.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/using-eventbridge-scheduler.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for Amazon EventBridge.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-EventBridge_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

Amazon EventBridge
Deep Dive

## KEY TAKEAWAYS

- Event buses route events from many sources to targets.
- Rules match event patterns and send events to targets.
- Pipes connect one source to one target with filtering.
- Scheduler invokes targets on schedules or one-time tasks.
- Event bus policies control cross-account access.

## CORE MENTAL MODEL

Event source + bus or pipe + rule or filter -> target action

## WHEN TO USE IT

- Decouple services with event-driven architecture.
- Route AWS service or custom application events.
- Connect streams or queues to targets with pipes.
- Run scheduled tasks with EventBridge Scheduler.

## WATCH OUT

- Events with no matching rules take no action.
- Rules can invoke multiple targets in parallel.
- Cross-account buses need resource-based permissions.

## SECURITY & OPERATIONS

- Use IAM and event bus policies for access.
- Monitor rules, invocations, and failed deliveries.
- Use dead-letter queues where delivery failures matter.
- Validate event patterns before relying on routing.

## KNOWLEDGE CHECK

- Need many sources to many targets -> use an event bus.
- Need one source to one target -> use EventBridge Pipes.
- Need cron or one-time task -> use EventBridge Scheduler.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official EventBridge docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official EventBridge icon color `#E7157B`.
