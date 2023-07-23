#!/bin/bash
# Installs cillium (generic, see https://docs.cilium.io/en/stable/gettingstarted/k8s-install-default/#k8s-install-quick)
set -e
. common.sh

banner "Deleting the cluster"

kind delete cluster --name=kind-cilium

banner "Showing remaining kind clusters"

kind get clusters
