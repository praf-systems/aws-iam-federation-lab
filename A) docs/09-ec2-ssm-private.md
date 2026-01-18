Phase 2B — EC2 (private subnet) with SSM (no SSH)
Senior move: **don’t SSH**.
- Create EC2 in private subnet
- Attach IAM role: `AmazonSSMManagedInstanceCore`
- Ensure SSM endpoints / outbound access (NAT or VPC endpoints later)
- Connect via **Session Manager**
- Verify outbound: `curl`, `yum update`, etc.
