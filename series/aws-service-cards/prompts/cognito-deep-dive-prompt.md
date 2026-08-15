# Amazon Cognito - Deep Dive Card Prompt

## Official AWS Sources

- https://docs.aws.amazon.com/cognito/
- https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools.html
- https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html
- https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html
- https://docs.aws.amazon.com/cognito/latest/developerguide/authentication.html
- https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-userpools-server-contract-reference.html
- https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-integrating-user-pools-with-identity-pools.html
- https://aws.amazon.com/architecture/icons/

## Image Generation Prompt

Create a vertical AWS technical study card for Amazon Cognito.

Final output format: PNG.
Recommended canvas: 1080 x 1350 px.
All visible text must be in English.

Use the official AWS Architecture Icon:

`assets/aws-icons/Arch_Amazon-Cognito_64.svg`

The header accent color must be based on the official icon background color `#DD344C`.

## Header

Amazon Cognito
Deep Dive

## KEY TAKEAWAYS

- User pools authenticate users and issue JWTs.
- Identity pools issue temporary AWS credentials.
- App clients define application-specific auth settings.
- Managed login provides hosted OIDC sign-in pages.
- Lambda triggers customize user pool workflows.

## CORE MENTAL MODEL

App + user pool + app client -> tokens -> API access; identity pool -> AWS credentials

## WHEN TO USE IT

- Add sign-up and sign-in to web or mobile apps.
- Federate users from social, OIDC, or SAML providers.
- Authorize APIs with user pool tokens.
- Grant scoped AWS access to authenticated or guest users.

## WATCH OUT

- Self-registration opens your app to public sign-up.
- Public app clients cannot safely hold client secrets.
- Callback and logout URLs must match the app flow.
- Identity pool IAM roles define actual AWS permissions.
- Token lifetimes and revocation are app-client settings.

## SECURITY & OPERATIONS

- Use least-privilege IAM roles for identity pools.
- Protect app clients, domains, callback URLs, and scopes.
- Enable MFA or advanced security controls where required.
- Use Lambda triggers only for deliberate custom flows.
- Monitor auth events, errors, and app integration behavior.

## KNOWLEDGE CHECK

- Need app sign-in -> use a user pool.
- Need AWS service credentials -> use an identity pool.
- Need hosted OIDC pages -> configure managed login.
- Need custom signup logic -> use Lambda triggers.

## Visual Style

Use the AWS service card visual system. Light canvas, no visible footer, no URLs in the PNG, official icon preserved, compact header, full usable width, polished panels, readable mobile typography.

## Accuracy Checklist

- Service definition matches official AWS documentation.
- Technical guidance is grounded in official Cognito docs.
- No visible source footer or URLs in the PNG.
- Header color is based on the official Cognito icon color `#DD344C`.
