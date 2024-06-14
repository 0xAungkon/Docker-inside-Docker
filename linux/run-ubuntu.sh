#!/bin/bash
container_name='docker-ubuntu1'
docker exec -it $container_name bash -c 'nohup dockerd & bash'