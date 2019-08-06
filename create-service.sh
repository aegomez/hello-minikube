#!/bin/bash

# make the container accessible from outside the Kubernetes cluster

# Expose the Pod to the public
kubectl expose deployment hello-node --type=LoadBalancer --port=8080

# View the just created Service
kubectl get services

# On Minikube, the Service is made accessible through
minikube service hello-node