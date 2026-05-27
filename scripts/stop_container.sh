#!/bin/bash
set -e

# Stop the running container (if any)
containerId=$(docker ps -q)

if [ -n "$containerId" ]; then
  docker stop "$containerId"
  docker rm -f "$containerId"
fi