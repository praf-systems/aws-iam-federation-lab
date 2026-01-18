Phase 2A — NAT + Routing
- Allocate Elastic IP
- Create NAT Gateway in **public subnet A**
- Update **private route table**: `0.0.0.0/0 → NAT Gateway`
- Keep public route table: `0.0.0.0/0 → IGW`
- Verify private subnets now have outbound 
