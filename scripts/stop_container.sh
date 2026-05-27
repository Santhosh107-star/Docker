#!/bin/bash
set -e

# Stop the running container (if any)
containerId=$(docker ps | awk -F " " '{print $1}')
docker stop "$containerId"
docker rm -f "$containerId"
