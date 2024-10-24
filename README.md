# souf_hdh_demo_repo

This repository contains the following:

- **pipelines/**: Azure DevOps pipeline configurations for provisioning AKS, setting up ArgoCD, and deploying applications using Helm.
- **infra/**: Infrastructure code for deploying an AKS cluster and ArgoCD using Terraform.
  - **infra/k8s/**: AKS cluster setup using Terraform.
  - **infra/gitops/**: ArgoCD setup using Terraform.
- **apps/**: Helm charts for deploying applications on top of the AKS cluster.
  - **hdh_app1/**: Example Helm chart for Application 1.
  - **hdh_app2/**: Example Helm chart for Application 2.

## Steps

### 1. Provision AKS Cluster
The AKS cluster is provisioned using

# DEMO pour HDH
