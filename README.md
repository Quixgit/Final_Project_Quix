# DevOps Final Project: EKS Deployment with Terraform, ArgoCD, and GitHub Actions

[![CI/CD](https://github.com/yourusername/devops-final-project/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/yourusername/devops-final-project/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Проект демонстрирует полный цикл развертывания Python-приложения в Amazon EKS с использованием:
- **Terraform** для инфраструктуры
- **ArgoCD** для GitOps-деплоя
- **GitHub Actions** для CI/CD

## 🛠️ Структура проекта
.
├── .github/ # GitHub Actions workflow
│ └── workflows/
│ └── docker-publish.yml
├── app/ # Исходный код приложения
│ ├── main.py
│ └── requirements.txt
├── k8s-manifests/ # Kubernetes-манифесты
│ ├── deployment.yaml
│ ├── service.yaml
│ └── ingress.yaml
├── terraform/ # Инфраструктура как код
│ ├── providers.tf
│ ├── eks.tf
│ ├── nginx-ingress.tf
│ └── argocd.tf
├── Dockerfile # Сборка Docker-образа
├── argocd-app.yaml # Конфигурация ArgoCD Application
└── README.md


## 🚀 Быстрый старт

### Предварительные требования
- Аккаунты:
  - [GitHub](https://github.com)
  - [Docker Hub](https://hub.docker.com)
  - [AWS](https://aws.amazon.com)
- Установленные инструменты:
  ```bash
  # Terraform
  terraform -v > terraform_1.5.7

  # AWS CLI
  aws --version > aws-cli/2.15.0

  # Kubernetes tools
  kubectl version --client
  helm version


  📜 Лицензия
Данный проект распространяется под лицензией MIT.
