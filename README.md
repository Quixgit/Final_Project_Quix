# DevOps Final Project: EKS Deployment with Terraform, ArgoCD, and GitHub Actions

[![CI/CD](https://github.com/yourusername/devops-final-project/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/yourusername/devops-final-project/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Проект демонстрирует полный цикл развертывания Python-приложения в Amazon EKS.

## Структура проекта

```bash
.
├── .github/                  # GitHub Actions
│   └── workflows/
│       └── docker-publish.yml
│
├── app/                      # Исходный код
│   ├── main.py
│   └── requirements.txt
│
├── k8s-manifests/            # Kubernetes конфиги
│   ├── deployment.yaml
│   ├── service.yaml
│   └── ingress.yaml
│
├── terraform/                # Инфраструктура
│   ├── providers.tf
│   ├── eks.tf
│   ├── nginx-ingress.tf
│   └── argocd.tf
│
├── Dockerfile                # Docker-образ
├── argocd-app.yaml           # ArgoCD Application
└── README.md
```

## Основные компоненты
- **Terraform** - создание EKS кластера и NGINX Ingress
- **ArgoCD** - GitOps-деплой приложения
- **GitHub Actions** - автоматизация сборки Docker-образа

## Быстрый старт
1. Сборка Docker-образа:
```bash
docker build -t <username>/myapp:latest .
```

2. Инициализация Terraform:
```bash
cd terraform && terraform init
```

3. Развертывание EKS:
```bash
terraform apply -auto-approve
```

4. Настройка ArgoCD:
```bash
kubectl apply -f ../argocd-app.yaml
```

## Настройка DNS
1. Получить DNS Load Balancer:
```bash
kubectl get svc -n ingress-nginx -o jsonpath='{.items[0].status.loadBalancer.ingress[0].hostname}'
```

2. Создать CNAME-записи для:
- `argocd.your-domain.com`
- `app.your-domain.com` 

## Лицензия
[MIT](LICENSE)
