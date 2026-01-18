## Sequence (SAML to AWS Console)

```mermaid
sequenceDiagram
  participant U as User
  participant A as Microsoft Entra ID
  participant S as AWS IAM Identity Center
  participant C as AWS Console

  U->>A: Login (myapps.microsoft.com)
  A->>S: SAML Assertion
  S->>S: Evaluate group -> permission set
  S->>C: Redirect w/ federated session
  C-->>U: Console access



```md
```mermaid
flowchart LR
  U[User Browser] -->|Login| A[Microsoft Entra ID]
  A -->|SAML Assertion| S[AWS IAM Identity Center]
  S -->|Role/Permission Set| AWS[(AWS Accounts)]
  AWS --> C[AWS Console]



