#!/bin/bash
# Downloads the cluster configuration
set -e
. common.sh

curl -LO https://raw.githubusercontent.com/cilium/cilium/1.12.3/Documentation/gettingstarted/kind-config.yaml
