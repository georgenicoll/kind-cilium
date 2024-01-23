#!/bin/bash
# Installs cillium (generic, see https://docs.cilium.io/en/stable/gettingstarted/k8s-install-default/#k8s-install-quick)
set -e
. common.sh

banner "Generating metrics-values/yaml configuration"

cat <<EOF > metrics-values.yaml
prometheus:
  enabled: true
operator:
  prometheus:
    enabled: true
hubble:
  enabled: true
  metrics:
    enabled: [dns,drop,tcp,flow,port-distribution,icmp,http]
EOF

banner "Installing Cillium"

cilium install --version ${CILIUM_VERSION} --helm-values metrics-values.yaml

banner "Waiting for Cillium to come up (this may take a few minutes)"

cilium status --wait

banner "Checking installation"

cilium status
