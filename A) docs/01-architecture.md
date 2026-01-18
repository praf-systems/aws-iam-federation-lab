## Sequence (SAML to AWS Console)
```md
```mermaid
flowchart LR
  U[User Browser] -->|Login| A[Microsoft Entra ID]
  A -->|SAML Assertion| S[AWS IAM Identity Center]
  S -->|Role/Permission Set| AWS[(AWS Accounts)]
  AWS --> C[AWS Console]



