# AWS Auto Scaling - Overview Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/autoscaling/
- https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-a-scaling-plan.html
- https://docs.aws.amazon.com/autoscaling/plans/userguide/how-it-works.html
- https://docs.aws.amazon.com/autoscaling/plans/userguide/gs-configure-scaling-plan.html
- https://docs.aws.amazon.com/autoscaling/plans/APIReference/Welcome.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational card for AWS Auto Scaling.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_AWS-Auto-Scaling_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

AWS Auto Scaling
Overview

## SERVICE FOCUS

Configure scaling plans for related scalable resources.

AWS Auto Scaling helps discover supported resources, apply scaling strategies, and create policies that adjust capacity as demand changes.

## WHAT IS IT?

AWS Auto Scaling uses scaling plans to configure auto scaling for collections of supported resources. It can combine dynamic scaling and predictive scaling to maintain target utilization.

## HOW IT WORKS

1. Discover
   Find scalable resources from tags, CloudFormation stacks, or selected resources.

2. Strategy
   Choose availability, cost, balanced, or custom target utilization.

3. Policies
   Create target tracking policies for supported resources.

4. Forecast
   Predictive scaling can forecast EC2 capacity needs.

5. Adjust
   Capacity scales out or in within min and max limits.

## INTEGRATES WITH

- EC2 Auto Scaling: Auto Scaling groups
- Amazon ECS: service desired task count
- Amazon DynamoDB: provisioned throughput
- Amazon Aurora: read replicas
- Spot Fleet: target capacity
- Amazon CloudWatch: metrics and forecasting

## BENEFITS

- DISCOVERY: Finds scalable resources for an application.
- STRATEGIES: Optimizes for availability, cost, or balance.
- DYNAMIC: Reacts to live utilization changes.
- PREDICTIVE: Forecasts recurring EC2 demand.
- BOUNDED: Uses minimum and maximum capacity limits.

## COMMON USE CASES

- Application-wide scaling plans
- EC2 capacity management
- ECS service scaling
- DynamoDB throughput scaling
- Recurring traffic spikes

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Workflow reflects scaling plans, strategies, dynamic scaling, predictive scaling, and capacity limits.
- No visible source footer or URLs in the PNG.
- Header color is based on the official Auto Scaling icon color `#E7157B`.
