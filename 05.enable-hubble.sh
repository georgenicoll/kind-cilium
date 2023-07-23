#!/bin/bash
# Enables hubble
set -e
. common.sh

banner "Enabling hubble with ui"

cilium hubble enable --ui

banner "Waiting for hubble to come up"

cilium status --wait

banner "Hubble is reporting 'up'.  Run the following to open hubble ui:"

echo "cilium hubble ui"
