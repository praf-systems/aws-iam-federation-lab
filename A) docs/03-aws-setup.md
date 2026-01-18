# AWS Account & Organization Setup

## 1. AWS Free Tier Account
- Created an AWS Free Tier account using the root user
- Configured:
  - Account Alias: <placeholder>
  - Account Number: <placeholder>

> Root account used only for initial setup and break-glass access.

---

## 2. IAM Hardening
- Created a dedicated IAM user to manage AWS resources
- Enabled MFA using authenticator app (Authy)
- Avoided use of root credentials after initial setup

---

## 3. AWS Organizations
Created an AWS Organization with multiple accounts for isolation and governance.

### Accounts:
- `praf-identity` – Identity and access-related services
- `praf-sandbox` – Hands-on labs and experiments
- `Praf_AWS` – Primary/management account

### Permissions:
- Assigned `AdministratorAccess` permission set across accounts
- Centralized management via AWS IAM Identity Center
