# Common Docker Commands

1. `docker images`: This command is used to list all the images that are available on the local machine.
2. `docker ps`: This command is used to list all the containers that are currently running on the local machine.
3. `docker ps -a`: This command is used to list all the containers that are currently running or have been stopped on the local machine.
4. `docker run <image_name>`: This command is used to run a container from an image. If the image is not available on the local machine, it will be pulled from the Docker Hub.
5. `docker stop <container_id>`: This command is used to stop a running container. The container ID can be obtained by running the `docker ps` command.
6. `docker rm <container_id>`: This command is used to remove a container. The container ID can be obtained by running the `docker ps -a` command.
7. `docker kill <container_id>`: This command is used to kill a running container. The container ID can be obtained by running the `docker ps` command.
8. `docker rmi <image_id>`: This command is used to remove an image. The image ID can be obtained by running the `docker images` command.
9. `docker exec -it <container_id> <command>`: This command is used to execute a command inside a running container. The container ID can be obtained by running the `docker ps` command.
10. `docker logs <container_id>`: This command is used to view the logs of a container. The container ID can be obtained by running the `docker ps` command.
11. `docker build -t <image_name> <path_to_dockerfile>`: This command is used to build an image from a Dockerfile. The `-t` flag is used to tag the image with a name.
12. `docker push <image_name>`: This command is used to push an image to the Docker Hub. The image name should be in the format `<username>/<image_name>`.
13. `docker pull <image_name>`: This command is used to pull an image from the Docker Hub.


#### Example of `exec` command:
```bash
docker exec -it my_container /bin/bash
```
_This will open a bash shell inside the running container `my_container`._

```bash
docker exec -it my_container /bin/sh
```
_This will open a shell inside the running container `my_container`._

shell is used because it is a lightweight version of bash and is available in most of the containers.
`/bin/bash` is not available in all containers. If we try to run it in node:22-alpine container, it will give an error, that's why we use `/bin/sh` in such cases.