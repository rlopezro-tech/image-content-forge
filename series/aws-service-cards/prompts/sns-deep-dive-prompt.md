# Amazon Simple Notification Service - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/sns/latest/dg/welcome.html
- https://docs.aws.amazon.com/sns/latest/dg/sns-create-topic.html
- https://docs.aws.amazon.com/sns/latest/dg/sns-message-filtering.html
- https://docs.aws.amazon.com/sns/latest/dg/fifo-message-grouping.html
- https://docs.aws.amazon.com/sns/latest/dg/fifo-message-delivery.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for Amazon Simple Notification Service.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-Simple-Notification-Service_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

Amazon Simple Notification Service
Deep Dive

## KEY TAKEAWAYS

- Standard topics fan out messages to many endpoints.
- FIFO topics preserve ordering for SQS subscribers.
- Subscription filter policies reduce irrelevant delivery.
- Subscribers receive pushed notifications.
- Topic policies control publish and subscribe access.

## CORE MENTAL MODEL

Publisher + SNS topic + filter policy -> delivery fanout

## WHEN TO USE IT

- Broadcast events to multiple subscribers.
- Send alerts through email, SMS, or HTTP/S.
- Fan out events to SQS queues or Lambda.
- Use FIFO topics when ordering matters.

## WATCH OUT

- Subscribers receive all messages by default.
- Filter policy changes can take time to apply.
- FIFO topics have endpoint restrictions.

## SECURITY & OPERATIONS

- Control publish and subscribe access with IAM.
- Monitor delivery metrics and failures with CloudWatch.
- Use delivery policies and DLQs for supported endpoints.
- Use filter policies to simplify subscriber routing.

## KNOWLEDGE CHECK

- Need publish/subscribe fanout -> use an SNS topic.
- Need ordered fanout to queues -> use an SNS FIFO topic.
- Need selective delivery -> use subscription filters.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official SNS docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official SNS icon color `#E7157B`.
