ZIP := $(shell ./packname.bash)
DEV_ZIP := $(shell ./packname.bash -dev)

$(ZIP): mods index.toml pack.toml .packwizignore-release
	cp .packwizignore-release .packwizignore
	packwiz curseforge export -o $@

.PHONY: dev
dev: $(DEV_ZIP)
$(DEV_ZIP): mods index.toml pack.toml .packwizignore-development
	cp .packwizignore-development .packwizignore
	packwiz curseforge export -o $@

mods: curseforge.md
	rm -fr mods/*.pw.toml
	./install_curseforge.bash
	touch mods

.PHONY: lint
lint: 
	shfmt -w *.bash
	shellcheck *.bash
	cp .packwizignore-release .packwizignore
	packwiz refresh
	git diff --exit-code
