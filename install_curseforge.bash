#!/usr/bin/env bash

set -eux

cd "$(dirname "$0")"

main() {
	cp .packwizignore-release .packwizignore

	urls | while read -r url; do
		yes | packwiz curseforge install "$url"
	done
}

urls() {
	grep -Eo 'https://www.curseforge.com/minecraft/mc-mods/[[:graph:]]*' <curseforge.md
}

main
