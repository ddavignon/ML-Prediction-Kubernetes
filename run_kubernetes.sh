#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=dustindavignon/ml-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-prediction --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-prediction-6d98f888c4-4gz4t 8000:80

