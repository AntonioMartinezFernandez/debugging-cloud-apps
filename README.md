# Debugging Cloud Apps

## Requirements

1. Docker Desktop / Orbstack
1. [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/)
1. [Skaffold](https://skaffold.dev/docs/install/)
1. Kubectl
1. Go

## Getting Started

1. Install all the requirements
1. Create [github token (classic)](https://github.com/settings/tokens) with `[read:packages]` and `[write:packages]` permissions
1. `export CR_PAT=YOUR_TOKEN`
1. `echo $CR_PAT | docker login ghcr.io -u YOUR_USER_NAME --password-stdin`
1. Replace `image` values in `skaffold.yaml` and `api.yaml` with your own github container registry (following pattern `ghcr.io/YOUR_USER_NAME/SERVICE_NAME)
1. Run `make cluster`
1. Run `make debug`

---

1. `kubectl create secret docker-registry docker-cfg --docker-server=https://ghcr.io --docker-username=YOUR_USER_NAME --docker-password=YOUR_TOKEN --docker-email=YOUR_GITHUB_EMAIL`
