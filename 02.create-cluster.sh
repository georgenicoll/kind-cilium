#!/bin/bash
# Creates the cluster
set -e
. common.sh

kind create cluster --config=kind-config.yaml --name=kind-cilium
