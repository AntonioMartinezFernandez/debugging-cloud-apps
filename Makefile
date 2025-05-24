# Makefile for Skaffold development environment

.PHONY: all run debug
all: run debug

spawn:
	@echo "Creating cluster..."
	kind create cluster --name skaffold-dev --config ./tests/kind-cluster.yaml

destroy:
	@echo "Destroying cluster..."
	kind delete cluster --name skaffold-dev

run:
	skaffold dev  --wait-for-deletions=false  --cleanup=false

debug:
	skaffold debug  --wait-for-deletions=false  --cleanup=false
