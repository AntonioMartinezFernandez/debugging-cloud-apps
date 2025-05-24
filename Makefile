# Makefile for Skaffold development environment

.PHONY: all run debug
all: run debug

run:
	skaffold dev  --wait-for-deletions=false  --cleanup=false

debug:
	skaffold debug  --wait-for-deletions=false  --cleanup=false
