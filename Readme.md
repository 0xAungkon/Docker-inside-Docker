# Docker-inside-Docker

## Story Line:

Recently I was facing some issue with my windows , i couldn't build my npm build for some reason but i have installed Docker-desktop in my pc . So i thought it would be best to put docker  so i try to find any [official repository](https://hub.docker.com/_/docker) but i couldn't find my favorite ubuntu  so i create a bash script to run docker  inside of docker and surpricingly that does work .

So this is **A Docker Environment Inside of Docker Ubuntu Instance.**

**Direct Run:**

`docker pull 0xAungkon/docker-inside-docker (`**It will skip Setup**`)`

docker  run --name ubuntu-docker -dit `docker-inside-docker`

**Windows Setup:**

1.  Open Cmd
2.  Run `./windows/setup.bat ubuntu-docker`

Get Ubuntu Shell:

1.  run `windows/run-ubuntu.bat ubuntu-docker`
2.  write `docker run hello-world`  in cli.

**Linux Setup:**

1.  Open Cmd
2.  Run `chmod +x ./linux/setup.sh; ./linux/setup.sh ubuntu-docker`

Get Ubuntu Shell:

1.  run  `chmod +x ./linux/run-ubuntu.sh; ./linux/run-ubuntu.sh ubuntu-docker`
2.  write `docker run hello-world`  in cli.


---

## Feel free to reach out if you have any questions or need help getting started!

Github: [https://0xaungkon.github.io/](https://0xaungkon.github.io/)

Linkedin: [https://www.linkedin.com/in/aungkon-malakar/](https://www.linkedin.com/in/aungkon-malakar/)

Facebook: [https://www.facebook.com/0xAungkon/](https://www.facebook.com/0xAungkon/)
