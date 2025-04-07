# DevOps Final Project

Проект включает развертывание Python-приложения в EKS с использованием Terraform, ArgoCD и GitHub Actions.

## Требования

- Аккаунты:
  - [GitHub](https://github.com)
  - [Docker Hub](https://hub.docker.com)
  - [AWS](https://aws.amazon.com)
- Установленные инструменты:
  - Terraform >= 1.5
  - AWS CLI v2
  - kubectl
  - Helm
  - Docker

## Структура проекта
.
├── .github/
│ └── workflows/
│ └── docker-publish.yml
├── app/
│ ├── main.py
│ └── requirements.txt
├── k8s-manifests/
│ ├── deployment.yaml
│ ├── service.yaml
│ └── ingress.yaml
├── terraform/
│ ├── providers.tf
│ ├── eks.tf
│ ├── nginx-ingress.tf
│ └── argocd.tf
├── Dockerfile
├── argocd-app.yaml
└── README.md
