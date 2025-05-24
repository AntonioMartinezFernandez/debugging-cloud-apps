# Makefile for Skaffold development environment

.PHONY: all run debug
all: run debug

run:
	go tool github.com/GoogleContainerTools/skaffold/v2/cmd/skaffold dev  --wait-for-deletions=false  --cleanup=false

debug:
	go tool github.com/GoogleContainerTools/skaffold/v2/cmd/skaffold debug  --wait-for-deletions=false  --cleanup=false
