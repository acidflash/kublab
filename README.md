# NGINX Kubernetes Deployment with ArgoCD

This repository contains the manifests for deploying an NGINX application in Kubernetes using ArgoCD.

## Directory Structure
- `namespace.yaml`: Creates the `nginx-external` namespace.
- `deployment.yaml`: Deploys the NGINX application.
- `persistent-volume.yaml`: Defines a PersistentVolume for data persistence.
- `persistent-volume-claim.yaml`: Claims the PersistentVolume.
- `service.yaml`: Exposes the application using a LoadBalancer.

## Deployment Steps
1. Apply the ArgoCD Application manifest pointing to this repository and path `nginx-project`.
2. Sync the application using ArgoCD to deploy the resources.
