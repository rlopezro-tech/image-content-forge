# Amazon API Gateway - Deep Dive Card Prompt

Create a 1080 x 1350 vertical PNG card for **Amazon API Gateway - Deep Dive**.

Use only official AWS sources:

- https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html
- https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api.html
- https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-overview.html
- https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-basic-concept.html
- https://aws.amazon.com/api-gateway/
- https://aws.amazon.com/architecture/icons/

Visible card text must be in English.

## Card Content

Header:

- Amazon API Gateway
- Deep Dive

Key Takeaways:

- API Gateway is the managed front door for API traffic.
- HTTP APIs are optimized for low-latency RESTful workloads.
- REST APIs offer a broader feature set for API management.
- WebSocket APIs support stateful, two-way communication.
- Stages, routes, integrations, auth, throttling, and monitoring shape production behavior.

Core Mental Model:

- client request + route or method + auth and limits + backend integration -> managed API surface

When To Use It:

- Expose Lambda functions through HTTPS APIs.
- Put a managed API layer in front of microservices.
- Build RESTful APIs with auth, throttling, stages, and monitoring.
- Support WebSocket applications with route-based backend invocation.

Watch Out:

- Choose HTTP API vs REST API based on required features.
- Redeploy stage-bound REST/WebSocket changes when needed.
- Design throttling, payload, timeout, and auth behavior explicitly.
- Keep backend errors, mappings, and CORS visible during testing.

Security & Operations:

- Use IAM, Lambda authorizers, JWT/OIDC, or Cognito where appropriate.
- Configure throttling, access logs, execution logs, metrics, and tracing.
- Use custom domains with ACM when user-facing URLs matter.
- Use VPC Link for private backend integrations.

Knowledge Check:

- Need simple Lambda HTTPS endpoint -> HTTP API plus Lambda integration.
- Need richer API management features -> evaluate REST API.
- Need persistent two-way client communication -> WebSocket API.

