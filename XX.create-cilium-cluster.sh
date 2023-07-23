#!/bin/bash
# Downloads the cluster configuration
set -e
. common.sh

banner "Running all setup scripts"

./01.get-cluster-config.sh
./02.create-cluster.sh
./03.install-cilium-cli.sh
./04.install-cilium.sh
./05.enable-hubble.sh
