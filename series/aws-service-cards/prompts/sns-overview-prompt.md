# Amazon Simple Notification Service - Overview Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/sns/latest/dg/welcome.html
- https://docs.aws.amazon.com/sns/latest/dg/sns-create-topic.html
- https://docs.aws.amazon.com/sns/latest/dg/sns-message-filtering.html
- https://docs.aws.amazon.com/sns/latest/dg/welcome-features.html
- https://docs.aws.amazon.com/sns/latest/dg/fifo-message-delivery.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational card for Amazon Simple Notification Service.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-Simple-Notification-Service_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

Amazon Simple Notification Service
Overview

## SERVICE FOCUS

Fan out messages with managed pub/sub topics.

Amazon SNS lets publishers send messages to topics and deliver them to multiple subscribers across protocols.

## WHAT IS IT?

Amazon SNS is a fully managed pub/sub messaging service that delivers messages from publishers to subscribers through topics.

## HOW IT WORKS

1. Publisher
   Applications or AWS services publish messages.

2. Topic
   A topic acts as the logical access point and communication channel.

3. Fanout
   SNS pushes copies of messages to subscribed endpoints.

4. Filter
   Subscription filter policies can select messages by attributes or body.

5. Deliver
   Subscribers receive notifications over supported protocols.

## INTEGRATES WITH

- AWS Lambda: function target
- Amazon SQS: queue endpoint
- HTTP/S: webhook endpoint
- Email/SMS: user alerts

## BENEFITS

- PUB/SUB: Publish once to many subscribers.
- PUSH-BASED: Subscribers do not need to poll.
- FILTERED: Route only relevant messages to each subscription.
- MULTI-PROTOCOL: Deliver to SQS, Lambda, HTTP/S, email, SMS, and mobile push.

## COMMON USE CASES

- Fanout processing
- Application alerts
- User notifications
- Mobile push messages

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Workflow reflects publishers, topics, subscriptions, filtering, and delivery.
- No visible source footer or URLs in the PNG.
- Header color is based on the official SNS icon color `#E7157B`.
