#!/bin/bash
# Downloads the cluster configuration
set -e
. common.sh

curl -LO https://raw.githubusercontent.com/cilium/cilium/${CILIUM_VERSION}/Documentation/installation/kind-config.yaml
