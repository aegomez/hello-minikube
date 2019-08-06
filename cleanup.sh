#!/bin/bash

# Clean up the resources created in the cluster
kubectl delete service hello-node
kubectl delete deployment hello-node

# Optionally, stop the Minikube VM
minikube stop

# Optionally, delete the Minikube VM
# minikube delete
