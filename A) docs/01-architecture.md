# Architecture

## Actors
- User (browser)
- IdP (e.g., Azure AD / Auth0 / Keycloak)
- AWS IAM (SAML/OIDC federation)
- AWS Console and/or STS

## High-level flow
1. User authenticates with IdP
2. IdP issues assertion/token
3. AWS IAM validates via configured provider
4. AWS STS returns AWS role credentials
5. User lands in AWS Console (or uses API creds)

## Notes
- Prefer least privilege roles
- Prefer short session durations where possible
- Treat metadata and claims mapping as configuration-as-documentation
