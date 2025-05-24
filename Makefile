# Makefile for Skaffold development environment

.PHONY: all run debug
all: run debug

cluster:
	@echo "Creating cluster..."
	kind create cluster --name skaffold-dev --config ./tests/kind-cluster.yaml

run:
	skaffold dev  --wait-for-deletions=false  --cleanup=false

debug:
	skaffold debug  --wait-for-deletions=false  --cleanup=false
