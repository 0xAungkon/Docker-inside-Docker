@echo off
REM Check if container name is provided as an argument
if "%~1"=="" (
    echo Error: Container name not provided.
    echo Usage: %0 ^<container_name^>
    exit /b 1
)

REM Assign container name from argument
set "container_name=%~1"

REM Create directory ./root
mkdir .\root

REM Start Docker container with necessary setup
docker run --name %container_name% --privileged -dit -v %cd%/root:/root ubuntu

REM Install prerequisites inside the Docker container
docker exec -it %container_name% bash -c 'apt update && apt install -y sudo';
docker exec -it %container_name% bash -c 'sudo apt-get install ca-certificates curl pip -y ; sudo install -m 0755 -d /etc/apt/keyrings; sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc';
docker exec -it %container_name% bash -c 'sudo chmod a+r /etc/apt/keyrings/docker.asc';
docker exec -it %container_name% bash -c 'echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null';
docker exec -it %container_name% bash -c 'sudo apt-get update';
docker exec -it %container_name% bash -c 'sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y';

