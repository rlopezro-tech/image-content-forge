# AWS Secrets Manager - Deep Dive Card Prompt

Create a 1080 x 1350 vertical PNG card for **AWS Secrets Manager - Deep Dive**.

Use only official AWS sources:

- https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html
- https://docs.aws.amazon.com/secretsmanager/latest/userguide/whats-in-a-secret.html
- https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html
- https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html
- https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_managed.html
- https://docs.aws.amazon.com/secretsmanager/latest/userguide/replicate-secrets.html
- https://aws.amazon.com/secrets-manager/
- https://aws.amazon.com/architecture/icons/

Visible card text must be in English.

## Card Content

Header:

- AWS Secrets Manager
- Deep Dive

Key Takeaways:

- Secrets Manager stores sensitive values outside application code.
- Applications retrieve secrets dynamically through AWS APIs and SDKs.
- Secret versions track updates and rotation states.
- IAM, resource policies, and KMS keys control access and encryption.
- Rotation can be managed by supported services or implemented with Lambda.

Core Mental Model:

- secret value + encryption + access policy + runtime retrieval + rotation -> managed secret lifecycle

When To Use It:

- Store database credentials, API keys, OAuth tokens, or app secrets.
- Replace hard-coded credentials in application code.
- Rotate supported credentials without redeploying applications.
- Replicate secrets across Regions for recovery scenarios.

Watch Out:

- Do not store sensitive values in tags or logs.
- Cache secrets carefully to reduce latency and API cost.
- Rotation must update both the secret and the target credential.
- Least-privilege policies must cover read, update, and rotation paths.

Security & Operations:

- Encrypt secrets with AWS KMS keys.
- Restrict access with IAM and resource-based policies.
- Monitor usage with AWS logging and auditing services.
- Use rotation schedules and replica secrets where appropriate.

Knowledge Check:

- Need database password rotation -> use Secrets Manager with managed or Lambda rotation.
- Need app runtime credential -> retrieve the secret through SDK calls.
- Need cross-Region recovery -> replicate the secret to another Region.

