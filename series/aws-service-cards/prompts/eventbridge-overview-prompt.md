# Amazon EventBridge - Overview Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-rules.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html
- https://docs.aws.amazon.com/eventbridge/latest/userguide/using-eventbridge-scheduler.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational card for Amazon EventBridge.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-EventBridge_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

Amazon EventBridge
Overview

## SERVICE FOCUS

Connect application components with events.

Amazon EventBridge ingests, filters, transforms, and delivers events through event buses, pipes, and schedules.

## WHAT IS IT?

Amazon EventBridge is a serverless service that uses events to connect application components. It supports event buses for many-to-many routing, pipes for point-to-point integrations, and Scheduler for managed task invocation.

## HOW IT WORKS

1. Source
   AWS services, custom apps, or SaaS providers emit events.

2. Bus or pipe
   Events enter an event bus or a pipe.

3. Filter
   Rules or pipe filters match event patterns.

4. Transform
   Optional input transformation or enrichment changes payloads.

5. Target
   Matching events are delivered to AWS services or API destinations.

## INTEGRATES WITH

- AWS Lambda: async targets
- Amazon SQS: queue targets
- Step Functions: workflow targets
- API destinations: HTTPS endpoints

## BENEFITS

- SERVERLESS: No event routing infrastructure to manage.
- DECOUPLED: Producers and consumers stay independent.
- FILTERED: Rules and pipes select relevant events.
- INTEGRATED: Connects AWS services, SaaS, and APIs.

## COMMON USE CASES

- Event-driven applications
- SaaS integrations
- Workflow triggers
- Scheduled automation

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Workflow reflects sources, buses or pipes, rules, transformations, and targets.
- No visible source footer or URLs in the PNG.
- Header color is based on the official EventBridge icon color `#E7157B`.
