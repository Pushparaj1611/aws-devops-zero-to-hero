#!/bin/bash
set -e


# Stop and remove the most recent running container
docker stop $(docker ps -q | head -n 1) && docker rm $(docker ps -q -f "status=exited" | head -n 1) && echo "Container stopped and removed."
