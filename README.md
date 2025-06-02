# Flask App Deployment on AWS EKS using CI/CD (Terraform + Jenkins)

This project automates the deployment of a **Python Flask web service** to an **AWS Elastic Kubernetes Service (EKS)** cluster using **Terraform** for infrastructure provisioning and **Jenkins** for CI/CD. The pipeline builds, tests, and deploys a Dockerized Flask app to the EKS cluster.

---
├── Jenkinsfile # Jenkins pipeline definition
├── flask-app/ 
|  ├── app.py # Python Flask application source code
│  ├── requirements.txt
│  └── Dockerfile # Flask app containerization
├── kubernetes/
│  ├── deployment.yaml # K8s deployment
│  └── service.yaml # K8s service
├── terraform/
│  ├── main.tf
|  ├── eks.tf
|  ├── ecr.tf
|  ├── versions.tf
|  ├── vps.tf
│  ├── variables.tf
│  ├── outputs.tf
│  └── terraform.tfvars
└── README.md # This file

---

## ⚙️ Technologies Used

- **Python Flask** - Web service framework
- **Docker** - App containerization
- **Jenkins** - CI/CD pipeline
- **Terraform** - AWS infrastructure provisioning
- **AWS EKS** - Kubernetes cluster
- **AWS ECR** - Container registry
- **Kubernetes** - Container orchestration

---

## 🚀 Setup Instructions

### 1️⃣ Clone the Repository

```bash
1) git clone https://github.com/007kumar/PythonFlaskApp_AWS.git

---
##
2 )Provision AWS Infrastructure Using Terraform
Make sure you have awscli, terraform, and proper IAM permissions set up.
cd flask-eks-cicd

cd terraform
terraform init
terraform apply


VPC and subnets
EKS cluster
ECR repository

---

3 ) Build & Push Docker Image to AWS ECR

4 ) Configure Jenkins for CI/CD

5 ) Kubernetes Deployment

---

(CI/CD Pipeline Stages)
Checkout source from GitHub
Build Docker image
Test Flask unit tests
Push image to ECR
Deploy to EKS using kubectl


Security & Best Practices
Least-privilege IAM roles for Terraform and Jenkins
Secrets and kubeconfig should be stored securely (e.g., Jenkins credentials store)
Production-ready Dockerfile with minimal base image
Kubernetes resources configured with health checks, resource limits
