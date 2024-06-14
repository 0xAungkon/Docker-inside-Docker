#!/bin/bash
if [ -z "$1" ]; then
    echo "Error: Container name not provided."
    echo "Usage: $0 <container_name>"
    exit 1
fi

container_name=$1


docker exec -it $container_name bash -c 'nohup dockerd & bash'