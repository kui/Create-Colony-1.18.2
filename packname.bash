#!/usr/bin/env bash

set -e
set -o pipefail

cd "$(dirname "$0")"

suffix="${1-}"
name="$(sed -nre 's/name = "(.*)"/\1/p' <pack.toml)"
version="$(sed -nre 's/version = "(.*)"/\1/p;' <pack.toml)"

echo "$name-$version$suffix.zip"
