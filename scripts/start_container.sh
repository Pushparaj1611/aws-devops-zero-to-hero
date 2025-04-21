#!/bin/bash
set -e

IMAGE_NAME="abhishekf5/simple-python-flask-app"
IMAGE_TAG="latest"
IMAGE_URI="${IMAGE_NAME}:${IMAGE_TAG}"

echo "Pulling Docker image: $IMAGE_URI"
docker pull "$IMAGE_URI"

echo "Stopping old container if exists..."
docker stop flask-app || true
docker rm flask-app || true

echo "Running new container..."
docker run -d --name flask-app -p 5000:5000 "$IMAGE_URI"
