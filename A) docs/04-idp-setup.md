# AWS IAM Identity Center Setup

## 1. Identity Center Configuration
- Enabled AWS IAM Identity Center
- Identity source set to: External Identity Provider (SAML 2.0)

---

## 2. Permission Sets
Created permission sets for access control:
- AdministratorAccess
- (Future) ReadOnly, PowerUser, Custom roles

---

## 3. Groups in IAM Identity Center
Created the following groups:
- `praf-admins`
- `praf-labs`
- `prof-readonly`

---

## 4. Users
Created users aligned to access roles:
- `praf-admin`
- `praf-lab`
- `praf-readonly-user`

Users were later mapped to external identity provider users.
