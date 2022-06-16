#!/usr/bin/env bash

set -eux
set -o pipefail

cd "$(dirname "$0")"

set +u
mode="${1-release}"
set -u

cp ".packwizignore-$mode" .packwizignore
echo "$mode" >.mode
