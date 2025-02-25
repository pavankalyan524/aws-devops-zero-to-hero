#!/bin/bash
set -e

# Stop the running container (if any)
container_id=`docker ps | awk 'NR>1 {print $1}'`  # Skip header and get container ID

if [[ ! -z "$container_id" ]]; then
  docker rm -f $container_id
  echo "Stopped and removed container: $container_id"
else
  echo "No running container found."
fi
