#!/usr/bin/env bash

set -eux

main() {
	trim <curseforge.md | while read -r line; do
		yes | packwiz curseforge install "$line"
	done
}

trim() {
	# Strip comments
	# Strip whitespaces in the begin
	# Strip whitespaces in the end
	# Strip empty lines
	sed -re 's!#.*!!; s!^\s*!!; s!\s*$!!; /^$/d'
}

main
