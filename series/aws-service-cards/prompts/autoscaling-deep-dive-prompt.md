# AWS Auto Scaling - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/autoscaling/
- https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-a-scaling-plan.html
- https://docs.aws.amazon.com/autoscaling/plans/userguide/how-it-works.html
- https://docs.aws.amazon.com/autoscaling/plans/userguide/getting-started-with-scaling-plans.html
- https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-configure-scaling-plan.html
- https://docs.aws.amazon.com/autoscaling/plans/userguide/auth-and-access-control.html
- https://docs.aws.amazon.com/autoscaling/plans/APIReference/Welcome.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for AWS Auto Scaling.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_AWS-Auto-Scaling_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

AWS Auto Scaling
Deep Dive

## KEY TAKEAWAYS

- Scaling plans configure related scalable resources.
- Dynamic scaling uses target tracking policies.
- Predictive scaling forecasts recurring EC2 demand.
- Strategies optimize for availability, cost, balance, or custom targets.
- Min and max capacity limits bound scaling behavior.

## CORE MENTAL MODEL

Resources + strategy + metrics -> scaling policies -> capacity changes

## WHEN TO USE IT

- Configure scaling across related application resources.
- Keep utilization near a target value as demand changes.
- Prepare EC2 capacity before recurring traffic spikes.
- Centralize strategy across EC2, ECS, DynamoDB, Aurora, or Spot Fleet.

## WATCH OUT

- Predictive scaling needs metric history for useful forecasts.
- New EC2 instances need warmup time before accurate scaling.
- Existing scaling policies can conflict with scaling plan choices.
- Min and max limits can prevent forecasted capacity changes.
- For predictive-only use, direct predictive policies can offer more features.

## SECURITY & OPERATIONS

- Use IAM permissions for who can create and manage scaling plans.
- Review target utilization before enabling a plan.
- Monitor CloudWatch metrics, forecast data, and scaling activity.
- Set minimum and maximum capacity for each resource.
- Understand CloudWatch charges for predictive scaling data calls.

## KNOWLEDGE CHECK

- Need live demand response -> use dynamic scaling.
- Need recurring EC2 spike prep -> use predictive scaling.
- Need cost or availability preference -> choose a scaling strategy.
- Need guardrails -> set min and max capacity.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official AWS Auto Scaling docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official Auto Scaling icon color `#E7157B`.
