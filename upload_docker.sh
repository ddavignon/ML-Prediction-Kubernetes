#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=dustindavignon/ml-prediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_ID" --password-stdin
docker tag $dockerpath:latest $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath