# Amazon CloudWatch - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html
- https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html
- https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Alarms.html
- https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch-and-eventbridge.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for Amazon CloudWatch.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-CloudWatch_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

Amazon CloudWatch
Deep Dive

## KEY TAKEAWAYS

- Metrics are identified by namespace, metric name, and dimensions.
- Logs are organized in log groups and log streams.
- Alarms evaluate data over periods before changing state.
- Dashboards combine metrics and logs for operational views.
- Alarm state changes can be sent to Amazon EventBridge.

## CORE MENTAL MODEL

Telemetry source + namespace or log group + query or alarm -> operational action

## WHEN TO USE IT

- Monitor AWS resources and applications in real time.
- Centralize logs, metrics, traces, dashboards, and alarms.
- Alert on thresholds, queries, or reliability objectives.
- Investigate operational health across accounts or Regions.

## WATCH OUT

- Metrics exist only in the Region where they are created.
- Each unique dimension combination creates a distinct metric.
- High-resolution custom metrics and alarms can increase cost.
- Missing or sparse data can affect alarm state evaluation.

## SECURITY & OPERATIONS

- Use IAM policies to control telemetry and dashboard access.
- Use the CloudWatch agent for EC2 and on-premises system data.
- Use metric filters or Logs Insights when logs need numeric signals.
- Route alarm changes through EventBridge for automated response.

## KNOWLEDGE CHECK

- Need time-series resource data -> use CloudWatch Metrics.
- Need searchable application logs -> use CloudWatch Logs Insights.
- Need automated notification or action -> use CloudWatch Alarms.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official CloudWatch docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official CloudWatch icon color `#E7157B`.
