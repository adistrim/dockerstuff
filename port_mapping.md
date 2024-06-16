# Port mapping in Docker

Port mapping is a way to map the ports of the host machine to the ports of the container. This is done so that the container can be accessed from the host machine. This is done by using the `-p` flag in the `docker run` command.

The syntax for port mapping is `-p <host_port>:<container_port>`. The host port is the port of the host machine and the container port is the port of the container. The host port can be any port of the host machine and the container port can be any port of the container.

For example, if you want to map the port 80 of the host machine to the port 8080 of the container, you can use the following command:

```bash
docker run -p 80:8080 my_container
```

This will map the port 80 of the host machine to the port 8080 of the container. Now, you can access the container from the host machine using the port 80.

Port mapping is useful when you want to expose the services running inside the container to the outside world. For example, if you are running a web server inside the container, you can map the port of the web server to the port of the host machine so that the web server can be accessed from the host machine.
