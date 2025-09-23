🚀 Kubernetes Project on AWS EKS

This project deploys a containerized NGINX application to an Amazon EKS cluster using Kubernetes manifests and GitHub Actions for CI/CD automation.

## 📁 Project Structure

k8s-project/ 
├── manifests/ 
│ ├── pod.yaml 
│ ├── deployment.yaml 
│ ├── service.yaml 
│ └── cronjob.yaml 
├── .github/ 
│  └── workflows/ 
│    └── deploy.yaml 
└── README.md


## ⚙️ Features

- Deploys NGINX via Pod and Deployment
- Exposes service using NodePort
- Runs a CronJob every 5 minutes
- Automates deployment with GitHub Actions

## 🛠️ Prerequisites

- AWS CLI, `eksctl`, and `kubectl` installed
- EKS cluster created and configured
- GitHub Secrets set:
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
  - `AWS_REGION`
  - `EKS_CLUSTER_NAME`

## 🚀 Deployment Instructions

### Manual Deployment
```bash
kubectl apply -f manifests/

Automated Deployment (CI/CD)
Push changes to the main branch

GitHub Actions will trigger and apply manifests to EKS

⏰ CronJob Behavior
The CronJob runs every 5 minutes and logs a timestamped message using BusyBox:
echo Hello from CronJob at $(date)

📜 License
MIT License (or specify your own)

👩🏽‍💻 Author
Balikis Lawal Cloud Security & DevOps Specialist LinkedIn • GitHub


