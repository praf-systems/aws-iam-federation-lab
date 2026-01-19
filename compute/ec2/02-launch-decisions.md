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