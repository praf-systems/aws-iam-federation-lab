## Placement
- Subnet type: (public/private)
- Access method: (SSH/SSM)
- Reasoning: <why this choice>

## Identity
- IAM role: rf-ec2-baseline-role
- Policies:
  - AmazonSSMManagedInstanceCore (required for SSM access, no inbound SSH needed)
- Notes:
  - No static credentials on instance (no access keys)


## Storage
- Root volume: gp3, <size> GiB
- Data volume: (yes/no) gp3, <size> GiB
- Rationale: separate OS from data for portability and rebuilds

## Region Selection

- Region: ap-south-1 (Mumbai)
- Reason:
  - Lowest latency for local access
  - Free-tier friendly
  - Consistent with EC2 lab scope

Note:
- VPC, Security Groups, EC2, and VPC Endpoints are region-scoped
- All SSM-related infrastructure is created in ap-south-1