# AWS CloudFormation - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-overview.html
- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html
- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html
- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html
- https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for AWS CloudFormation.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_AWS-CloudFormation_64.svg`

The header accent color must be based on the official icon background color `#E7157B`.

## Header

AWS CloudFormation
Deep Dive

## KEY TAKEAWAYS

- Templates are YAML or JSON blueprints for AWS resources.
- Stacks manage related resources as a single unit.
- Change sets preview proposed stack updates before execution.
- Drift detection compares actual resource state to expected template state.
- StackSets extend stack deployment across accounts and Regions.

## CORE MENTAL MODEL

Template + parameters + stack operation -> provisioned resources and tracked state

## WHEN TO USE IT

- Provision repeatable infrastructure from versioned templates.
- Manage create, update, and delete lifecycles together.
- Preview risky updates before applying them.
- Deploy common baselines across accounts or Regions.

## WATCH OUT

- Some updates can interrupt or replace resources.
- Change sets do not guarantee update success.
- Direct console changes can create stack drift.
- Stack policies and IAM permissions affect operations.

## SECURITY & OPERATIONS

- Use least-privilege IAM and service roles for stack actions.
- Store templates and parameters with controlled access.
- Review change sets for replacements before execution.
- Use drift detection to find unmanaged configuration changes.

## KNOWLEDGE CHECK

- Need reusable infrastructure definition -> write a template.
- Need grouped resource lifecycle -> create a stack.
- Need to preview update impact -> create a change set.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official CloudFormation docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official CloudFormation icon color `#E7157B`.
