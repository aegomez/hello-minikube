#!/bin/bash

# Start a minikube cluster and create a deaployment

minikube start

IMAGE_NAME="hello-minikube:0.1"
DEPLOYMENT_NAME="hello-node"

# (1) Use a local docker image

# Set docker env
eval $(minikube docker-env)

# Build image using docker daemon
docker build -t $IMAGE_NAME ./docker

# Run in minikube
kubectl run $DEPLOYMENT_NAME --image $IMAGE_NAME

# OR (2) Use a remote image

# kubectl create deployment $DEPLOYMENT_NAME --image=gcr.io/hello-minikube-zero-install/hello-node

# View the Deployment
# kubectl get deployments

# View the Pod
# kubectl get pods

# View the cluster events
# kubectl get events

# View the kubectl configuration
# kubectl config view

# Open the Kubernetes dashboard in a browser
# minikube dashboard
