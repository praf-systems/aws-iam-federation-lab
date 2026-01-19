# EC2 Launch Runbook (Console)

Goal: Launch a baseline EC2 instance inside existing VPC, with least-privilege IAM role, tight SG, and bootstrap via user data.

## Preconditions
- VPC created
- Subnets available
- Route tables + IGW/NAT understood (as applicable)

## Instance basics
- Name: rf-ec2-baseline-01
- AMI: Amazon Linux 2023
- Type: t3.micro
Rationale: baseline Linux, minimal surface area, cost controlled.

## Network
- VPC: <vpc-id / name>
- Subnet: <subnet-id / name> (public/private)
- Public IP: enabled/disabled
- Security group: rf-sg-ec2-baseline
- Inbound: (none OR SSH from my IP only)
- Outbound: default allow all (to be tightened later)

## User data
- Purpose: baseline patch + install CW agent + create bootstrap marker
- File: compute/ec2/03-user-data.sh
- Verification: /var/log/rf-bootstrap.log