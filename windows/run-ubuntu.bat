@echo off
REM Check if container name is provided as an argument
if "%~1"=="" (
    echo Error: Container name not provided.
    echo Usage: %0 ^<container_name^>
    exit /b 1
)

REM Assign container name from argument
set "container_name=%~1"

REM Example of running a command inside a Docker container on Windows
docker exec -it %container_name% bash -c "nohup dockerd & bash"