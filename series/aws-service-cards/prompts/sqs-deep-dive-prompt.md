# Amazon Simple Queue Service - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html
- https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html
- https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html
- https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-timers.html
- https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_CreateQueue.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for Amazon Simple Queue Service.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-Simple-Queue-Service_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

Amazon Simple Queue Service
Deep Dive

## KEY TAKEAWAYS

- Standard queues support at-least-once delivery and high throughput.
- FIFO queues preserve ordering within message groups.
- Visibility timeout controls how long received messages stay hidden.
- Messages must be deleted after successful processing.
- Dead-letter queues isolate messages that repeatedly fail.

## CORE MENTAL MODEL

Producer + queue + poller + visibility timeout -> delete or retry

## WHEN TO USE IT

- Decouple producers from consumers.
- Buffer bursty workloads before worker processing.
- Run asynchronous background jobs.
- Preserve order with FIFO message groups when required.

## WATCH OUT

- Standard queues can deliver a message more than once.
- Visibility timeout must match processing duration.
- FIFO queues require the `.fifo` suffix.
- DLQ queue type must match the source queue type.

## SECURITY & OPERATIONS

- Use IAM and queue policies to control send and receive access.
- Monitor visible, delayed, and in-flight messages with CloudWatch.
- Configure DLQs and redrive policies for failed processing.
- Use long polling to reduce empty responses and unnecessary calls.

## KNOWLEDGE CHECK

- Need async decoupling -> use an SQS queue.
- Need ordering and deduplication -> use a FIFO queue.
- Need failed-message isolation -> configure a DLQ.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official SQS docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official SQS icon color `#E7157B`.
