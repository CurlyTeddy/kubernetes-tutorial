#!/bin/bash

# Installation
sudo apt-get update && sudo apt-get install curl -y
mkdir install && cd install
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && \
sudo install minikube-linux-amd64 /usr/local/bin/minikube
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
curl -fsSL get.docker.com -o get-docker.sh && sh get-docker.sh && sudo usermod -aG docker $USER

# Get Kubernetes yaml files
cd ..
mkdir kubernetes-yaml && cd kubernetes-yaml
git clone 
sudo systemctl reboot