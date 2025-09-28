#!/bin/bash
PORT=5000  # the port your app uses
echo "Checking for container using port $PORT..."

# Get container ID(s) using the port
containerid=$(docker ps -q --filter "publish=$PORT")

if [ -n "$containerid" ]; then
  echo "Force removing container(s) using port $PORT: $containerid"
  docker rm -f $containerid
else
  echo "No container is using port $PORT."
fi
