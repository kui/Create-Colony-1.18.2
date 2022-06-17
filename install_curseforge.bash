#!/usr/bin/env bash

set -eux

main() {
	urls | while read -r url; do
		yes | packwiz curseforge install "$url"
	done
}

urls() {
	grep -Eo 'https://www.curseforge.com/minecraft/mc-mods/[[:graph:]]*' <curseforge.md
}

main
