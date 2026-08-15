# Amazon Cognito - Overview Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/cognito/
- https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools.html
- https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html
- https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-scenarios.html
- https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-integrate-apps.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS educational card for Amazon Cognito.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-Cognito_64.svg`

The header accent color must be based on the official icon background color `#DD344C`.

## Header

Amazon Cognito
Overview

## SERVICE FOCUS

Add authentication, authorization, and user access to apps.

Amazon Cognito provides user pools for sign-up and sign-in, and identity pools for temporary AWS credentials.

## WHAT IS IT?

Amazon Cognito handles user authentication and authorization for web and mobile apps. User pools are user directories and OIDC identity providers. Identity pools exchange identities for scoped AWS credentials.

## HOW IT WORKS

1. App
   A web or mobile app sends users to sign up or sign in.

2. User pool
   Cognito authenticates users directly or through external IdPs.

3. Tokens
   The app receives JWTs for identity and authorization.

4. Backend
   APIs, AppSync, or services validate user access.

5. AWS access
   Identity pools can issue temporary AWS credentials.

## INTEGRATES WITH

- External IdPs: OIDC, SAML, social sign-in
- AWS Lambda: user pool triggers
- Amazon API Gateway: authorizers
- AWS AppSync: GraphQL authorization
- AWS IAM: role-based AWS access
- AWS Amplify: app integration

## BENEFITS

- MANAGED AUTH: Add sign-up and sign-in faster.
- FEDERATION: Connect social, OIDC, and SAML providers.
- TOKENS: Use JWTs with app and API authorization.
- AWS ACCESS: Issue temporary scoped credentials.
- CUSTOMIZABLE: Extend flows with Lambda triggers.

## COMMON USE CASES

- Web and mobile sign-in
- Federated identity
- API authorization
- Guest and registered access
- User directories

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Workflow reflects user pools, identity pools, tokens, and AWS credentials.
- No visible source footer or URLs in the PNG.
- Header color is based on the official Cognito icon color `#DD344C`.
