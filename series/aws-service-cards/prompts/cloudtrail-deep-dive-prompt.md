# AWS CloudTrail - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html
- https://docs.aws.amazon.com/awscloudtrail/latest/userguide/how-cloudtrail-works.html
- https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html
- https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events.html
- https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-lake-concepts.html
- https://aws.amazon.com/cloudtrail/features/
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for AWS CloudTrail.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_AWS-CloudTrail_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

AWS CloudTrail
Deep Dive

## KEY TAKEAWAYS

- An event is a record of activity in an AWS account.
- Event History is available by default for recent management events.
- Trails deliver selected events to Amazon S3 for longer retention.
- Organization trails can capture activity across AWS accounts.
- Insights events help detect unusual API activity or error rates.

## CORE MENTAL MODEL

AWS activity + event selector + delivery target -> audit evidence and response

## WHEN TO USE IT

- Audit account activity and API calls.
- Investigate resource changes or denied access.
- Deliver immutable log files to controlled storage.
- Monitor important changes through events and alerts.

## WATCH OUT

- Event History is scoped to one account and one Region.
- Event History searches only recent management events.
- Data events must be explicitly selected for supported resources.
- CloudTrail Lake is not open to new customers after May 31, 2026.

## SECURITY & OPERATIONS

- Protect trail S3 buckets with least-privilege bucket policies.
- Use AWS KMS when encryption control is required.
- Enable log file validation to detect log file changes.
- Route critical activity to EventBridge or CloudWatch Logs.

## KNOWLEDGE CHECK

- Need recent control-plane activity -> use Event History.
- Need long-term audit logs -> create a trail to Amazon S3.
- Need multi-account capture -> use an organization trail.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official CloudTrail docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official CloudTrail icon color `#E7157B`.
