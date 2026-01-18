# ML / AI Track (Foundations)

This directory keeps the repository AI/ML-ready without distracting from the core cloud architecture work.

The goal is **readiness**:
- tooling installed
- structure in place
- future cloud integration clear

---

## Philosophy
- Identity + networking come first (SSO, multi-account, VPC)
- ML work stays reproducible and versioned
- Prefer managed services when they reduce ops burden

---

## Structure
ml/
├── notebooks/         # Jupyter notebooks (experiments, exploration)
├── src/               # Reusable Python modules
├── requirements.txt   # Local ML foundations dependencies
└── README.md

---

## Local setup
Recommended: one repo-level virtual environment.

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r ml/requirements.txt
python -m ipykernel install --user --name praf-ml