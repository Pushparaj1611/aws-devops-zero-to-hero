#!/bin/bash
set -e
# login
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 306856845400.dkr.ecr.us-east-1.amazonaws.com
# Pull the Docker image from Docker Hub
docker pull 306856845400.dkr.ecr.us-east-1.amazonaws.com/sample-app:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 306856845400.dkr.ecr.us-east-1.amazonaws.com/sample-app:latest
