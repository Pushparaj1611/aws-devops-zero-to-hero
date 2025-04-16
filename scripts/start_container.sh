#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull docker push 390402549997.dkr.ecr.us-west-2.amazonaws.com/sample-app:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 390402549997.dkr.ecr.us-west-2.amazonaws.com/sample-app:latest
