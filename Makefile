Create-Colony-1.18.2-1.0.0.zip: mods index.toml pack.toml .packwizignore
	packwiz curseforge export
mods: curseforge.md
	rm -fr mods/*.pw.toml
	./install_curseforge.bash
	touch mods
.packwizignore: .packwizignore-*
	./swich_mode.bash

.PHONY: lint
lint: 
	shfmt -w *.bash
	shellcheck *.bash
