#!/bin/bash
banner() {
    echo ""
    echo "=== $1:"
    echo ""
}

export -f banner
export CILIUM_VERSION="1.14.6"