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



And a high-level architecture:

```md
```mermaid
flowchart LR
  U[User Browser] -->|Login| A[Microsoft Entra ID]
  A -->|SAML Assertion| S[AWS IAM Identity Center]
  S -->|Role/Permission Set| AWS[(AWS Accounts)]
  AWS --> C[AWS Console]


**This is the fastest path** and looks great on GitHub.

### Option B — diagrams.net (draw.io) for “enterprise look”
- Create diagrams in diagrams.net
- Save as `diagrams/*.drawio` + export `*.png`
- Link PNG in docs

Structure:
- `diagrams/architecture.drawio`
- `diagrams/architecture.png`
- `diagrams/networking.drawio`
- `diagrams/networking.png`

If you want “sleek org aesthetics”, do Option B later. Start with Mermaid now.

---

## 5) “From an application like Postman” — what I think you actually want
You want a **clean UI workflow tool** that feels pro.

Two good fits:

### A) GitHub Desktop (clean, minimal, feels like an app)
- Visual branching, commits, push, PR
- Great for getting momentum back fast

### B) VS Code (best overall)
- Built-in Git panel
- Markdown preview
- Mermaid preview extensions
- Feels like a real engineering environment

Postman is great, but more for API testing. For *this* repo, I’d do:
- **VS Code + GitHub Desktop**
- Later: **Postman** when you start hitting AWS APIs or your own sample app endpoints.

---

## 6) Next: NAT + EC2 (Phase 2 plan that matches your docs)
This is the clean progression:

### Phase 2A — NAT + Routing
- Allocate Elastic IP
- Create NAT Gateway in **public subnet A**
- Update **private route table**: `0.0.0.0/0 → NAT Gateway`
- Keep public route table: `0.0.0.0/0 → IGW`
- Verify private subnets now have outbound internet (via NAT)

Doc file suggestion:
- `docs/08-nat-gateway.md`

### Phase 2B — EC2 (private subnet) with SSM (no SSH)
Senior move: **don’t SSH**.
- Create EC2 in private subnet
- Attach IAM role: `AmazonSSMManagedInstanceCore`
- Ensure SSM endpoints / outbound access (NAT or VPC endpoints later)
- Connect via **Session Manager**
- Verify outbound: `curl`, `yum update`, etc.

Doc file:
- `docs/09-ec2-ssm-private.md`

### Phase 2C — Observability “proof”
- VPC Flow Logs (optional)
- CloudWatch logs for SSM sessions (optional)
This makes it look very enterprise.

---

## 7) Your immediate next action (do this now)
Pick one track:

### Track 1 (fastest, looks great today)
1. Add Mermaid diagrams to `01-architecture.md`
2. Add `diagrams/` folder (even empty for now)
3. Commit + PR

### Track 2 (org-style workflow)
1. Create GitHub Project board
2. Create Issues for Phase 2 tasks
3. Then diagrams

---

If you want, paste your repo URL (or just tell me the exact filenames you want to update), and I’ll write:
- the **Mermaid diagrams** for `01-architecture.md`
- a clean `08-nat-gateway.md` skeleton
- a clean `09-ec2-ssm-private.md` skeleton

No secrets, no account IDs—just enterprise-grade docs.
