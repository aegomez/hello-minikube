#!/bin/bash

# Minikube has a set of built-in addons that can be enabled, disabled and opened in the local cluster

# List the currently supported addons
minikube addons list

# Example: enable an addon
minikube addons enable heapster

# View the Pod and Service that were just created
kubectl get pod,svc -n kube-system

# Disable the addon (wait for the service to be running)
# minikube addons disable heapster

# If the above command fails, try changing
# the addon value to false in config file
# minikube stop
# nano ~/.minikube/config/config.json