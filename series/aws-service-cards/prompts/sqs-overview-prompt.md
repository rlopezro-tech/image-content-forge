# Amazon Simple Queue Service - Overview Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html
- https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
- https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
- https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-timers.html
- https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_CreateQueue.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational card for Amazon Simple Queue Service.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-Simple-Queue-Service_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

Amazon Simple Queue Service
Overview

## SERVICE FOCUS

Decouple distributed systems with managed queues.

Amazon SQS lets producers send messages to queues while consumers process them independently and reliably.

## WHAT IS IT?

Amazon Simple Queue Service is a secure, durable, and available hosted queue that helps integrate and decouple distributed software systems and components.

## HOW IT WORKS

1. Producer
   Applications or AWS services send messages to a queue.

2. Queue
   SQS stores messages until consumers are ready to process them.

3. Poll
   Consumers receive messages using short or long polling.

4. Process
   Visibility timeout hides in-flight messages while work is running.

5. Delete or DLQ
   Consumers delete successful messages; repeated failures can move to a dead-letter queue.

## INTEGRATES WITH

- AWS Lambda: event source mappings
- Amazon SNS: fanout to queues
- Amazon EventBridge: event routing targets
- Amazon ECS: worker consumers

## BENEFITS

- DECOUPLED: Producers and consumers scale independently.
- DURABLE: Messages are stored in managed queues.
- ELASTIC: Queue depth absorbs traffic spikes.
- FAILURE-AWARE: DLQs isolate messages that fail processing.

## COMMON USE CASES

- Background job processing
- Microservice decoupling
- Request buffering
- Fanout processing with SNS

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Workflow reflects producers, queues, polling, visibility timeout, delete, and DLQs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official SQS icon color `#E7157B`.
