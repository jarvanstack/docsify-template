make_dir:=$(shell pwd)
app_name:=$(shell basename $(make_dir))

docsDir := docs

## install: Install docsify and gitbook-summary
.PHONY: install
install:
	./scripts/install.docsify.sh
	./scripts/install.gitbook-summary.sh

## gen: Gen _sidebar.md file
.PHONY: gen
gen:
	cd $(docsDir) && gitbook-summary && cd $(make_dir)
## up: Docker compose up server
.PHONY: up
up:
	docker-compose  -f docker-compose.yaml up  -d --build

## push: Commit and push to remote repo
.PHONY: push
.IGNORE: push
push: gen
	git add .
	git commit -m "update: Auto commit And push"
	git push origin master

## update: Use update_remote.sh to update remote repo
.PHONY: update
update: push
	./update_remote.sh

## serve: Docsify serve in dev env
.PHONY: serve
serve: gen
	docsify serve $(docsDir)

## help: Show this help info.
.PHONY: help
help: Makefile
	@printf "\nUsage: make <TARGETS> <OPTIONS> ...\n\nTargets:\n"
	@sed -n 's/^##//p' $< | column -t -s ':' | sed -e 's/^/ /'
	@echo "$$USAGE_OPTIONS"
