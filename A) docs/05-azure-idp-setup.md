# Azure AD (Microsoft Entra ID) as Identity Provider

## 1. Azure Free Tier Account
- Created Azure Free Tier account
- Accessed Microsoft Entra ID (formerly Azure AD)

---

## 2. Enterprise Application
- Created a new Enterprise Application:
  - Application type: Non-gallery
  - Name: AWS IAM Identity Center (Manual)

---

## 3. Single Sign-On Configuration
- SSO Method: SAML 2.0

### Metadata Exchange:
- Downloaded AWS IAM Identity Center SAML metadata file
- Uploaded AWS metadata into Azure Enterprise Application
- Downloaded Azure Federation Metadata
- Uploaded Azure metadata back into AWS IAM Identity Center

This established mutual trust between Azure and AWS.

---

## 4. Group & User Mapping
- Created Azure AD user
- Created corresponding user in AWS IAM Identity Center
- Created IAM Identity Center group:
  - `aws-admins`
- Mapped Azure user/group to AWS permission sets
