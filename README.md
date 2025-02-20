# Personal Infrastructure Configuration

A repository which holds the deployment manifests for the applications in my
personal cluster.

## Overview

This repository contains Kubernetes manifests for deploying various services to
a personal cluster:

- **PostgreSQL Database**
  - Persistent database deployment with encrypted credentials
  - 5GB persistent storage
  - Resource limits: 500m CPU, 1Gi Memory

- **Applications**
  - Blog Service
  - Poker Game Server
  - Salary Calculator
  - Snake Game

## Services

Each application is deployed as a Kubernetes service with:

- Container configurations
- Service definitions (ClusterIP)
- Kustomize-based deployments
- Docker images hosted on docker.io/tomarrell/personal

## Infrastructure Features

- Secure credentials management using age encryption
- Local path storage class for persistence
- Docker registry authentication
- Resource limits defined for all services
- Kustomize for deployment management

## Deployment

Each service can be deployed using:
```bash
kubectl apply -k kube/<service-name>
```

For services with encrypted secrets (like PostgreSQL), decrypt the environment
file first:
```bash
age -d -i ~/.ssh/tomssh.pem -o ./postgres.env ./postgres.env.encrypted
```

## Repository Structure
```
kube/
├── blog/         # Blog service
├── poker/        # Poker game server
├── postgres/     # Database service
├── salary/       # Salary calculator
└── snake/        # Snake game
```
