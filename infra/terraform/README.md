# Terraform – Infrastructure as Code

This directory contains Terraform configuration for provisioning and managing AWS infrastructure for this project.

Terraform is intentionally introduced **after** manual configuration to:
- Build clear mental models first
- Validate architectural decisions
- Avoid premature abstraction

---

## Design Principles

- **Identity-first**: AWS access is handled via IAM Identity Center (SSO)
- **Least privilege by default**
- **Multi-account aware** (via AWS Organizations)
- **Region explicit** (no hidden defaults)
- **Incremental adoption** (no big-bang applies)

---

## Structure

terraform/
├── versions.tf     # Terraform & provider constraints
├── providers.tf    # AWS provider configuration
├── main.tf         # Entry point (resources added incrementally)
└── README.md       # This document

---

## Authentication Model

Terraform uses **AWS CLI credentials** under the hood.

Authentication is handled via:
- AWS IAM Identity Center (SSO)
- Named AWS CLI profiles
- No static access keys

This aligns with enterprise security practices.

---

## Current State

- Terraform initialized
- AWS provider configured
- No resources applied yet

This directory acts as a **control plane placeholder** until infrastructure
(NAT, EC2, networking) is introduced in later phases.

---

## Planned Additions

- VPC resources (data sources first)
- NAT Gateway and routing
- EC2 instances in private subnets
- Optional: VPC endpoints
- Optional: State backend (S3 + DynamoDB)

Each addition will be documented before being applied.