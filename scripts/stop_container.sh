#!/bin/bash
set -e

# Stop the running container (if any)
containerId=$(docker ps | awk -F " " '{print $1}')

if [ -n "$containerId" ]; then
  docker stop "$containerId"
  docker rm -f "$containerId"
fi