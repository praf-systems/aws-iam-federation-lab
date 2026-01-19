# Networking Setup (Sandbox Account)

## Region
- Mumbai (ap-south-1)

---

## 1. VPC
- Created a custom VPC
- CIDR: <document actual CIDR>

---

## 2. Internet Gateway
- Created and attached an Internet Gateway (IGW) to the VPC

---

## 3. Subnets
Created four subnets for high availability:

### Public Subnets
- Public Subnet A (ap-south-1a)
- Public Subnet B (ap-south-1b)

### Private Subnets
- Private Subnet A (ap-south-1a)
- Private Subnet B (ap-south-1b)

---

## 4. Route Tables
- Created public route table
- Added route:
  - `0.0.0.0/0` → Internet Gateway
- Associated public subnets with public route table

Private subnets currently isolated (no NAT yet).
