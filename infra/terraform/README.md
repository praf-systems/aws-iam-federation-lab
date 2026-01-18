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
