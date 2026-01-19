#!/bin/bash
set -euxo pipefail

dnf update -y
dnf install -y amazon-cloudwatch-agent

# Simple marker so we can verify bootstrapping worked
echo "bootstrapped $(date -Is)" | tee /var/log/rf-bootstrap.log