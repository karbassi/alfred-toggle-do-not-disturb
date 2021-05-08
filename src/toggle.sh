#!/bin/bash

SRC_ROOT=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
STATUS=$("$SRC_ROOT/status.sh")

if [[ "${STATUS}" == "true" ]]; then
    "$SRC_ROOT/disable.sh"
else
	"$SRC_ROOT/./enable.sh"
fi
