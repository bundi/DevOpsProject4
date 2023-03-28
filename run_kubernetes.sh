#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=robama/project4dev

# Step 2
# Run the Docker Hub container with kubernetes
minikube kubectl -- run project4dev\
	--image=$dockerpath\
	--port=80 --labels app=project4dev
	--image-pull-policy=IfNotPresent

# Step 3:
# List kubernetes pods
minikube kubectl -- get pods

# Step 4:
# Forward the container port to a host
minikube kubectl port-forward project4dev 8000:80

