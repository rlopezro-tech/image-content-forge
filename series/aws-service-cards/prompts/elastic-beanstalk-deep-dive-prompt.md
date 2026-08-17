# AWS Elastic Beanstalk - Deep Dive Card Prompt

Create a 1080x1350 vertical LinkedIn technical study card for AWS Elastic Beanstalk.

Visible card text must be in English. Use the official AWS Architecture Icon `shared/assets/aws-icons/Arch_AWS-Elastic-Beanstalk_64.svg`.

## Card Structure

1. Header: AWS Elastic Beanstalk, Deep Dive
2. KEY TAKEAWAYS:
   - Elastic Beanstalk deploys application code and provisions AWS resources such as EC2, load balancers, Auto Scaling, and health monitoring
   - Applications contain versions and one or more environments that run those versions
   - Platforms define the OS, language runtime, web server, application server, and Elastic Beanstalk components
   - Web server environments handle HTTP traffic; worker environments process messages from Amazon SQS
   - You pay for the underlying AWS resources, not an additional Elastic Beanstalk charge
3. CORE MENTAL MODEL:
   Application source bundle + platform + environment configuration = managed AWS application environment
4. WHEN TO USE IT:
   - You want PaaS-style deployment on AWS
   - You need supported platforms such as Java, .NET, Node.js, PHP, Python, Ruby, Go, or Docker
   - You want AWS resources created for you but still visible and configurable
   - You need quick app hosting without designing every infrastructure layer first
5. WATCH OUT:
   - Elastic Beanstalk manages orchestration, but resources still live in your AWS account
   - Platform lifecycle and updates matter for security and support
   - Configuration drift can happen if resources are changed outside Elastic Beanstalk
   - Advanced architectures may fit ECS, EKS, Lambda, or custom IaC better
6. SECURITY & OPERATIONS:
   - IAM roles and instance profiles
   - Security groups and VPC settings
   - Environment health and logs
   - Managed platform updates
   - Blue/green deployments with environment swaps
7. KNOWLEDGE CHECK:
   - Need simple web app hosting? Use a web server environment
   - Need async background work? Use a worker environment
   - Need language/runtime stack? Choose a platform
   - Need safer release switch? Use environment URL swap

## Official Sources

- https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/Welcome.html
- https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.html
- https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features-managing-envs.html
- https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.managing.as.html
- https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/using-features.rollingupdates.html
- https://aws.amazon.com/architecture/icons/
