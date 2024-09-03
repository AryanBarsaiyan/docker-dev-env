# Docker Commands Documentation

## Table of Contents
- [Building the Docker Image](#building-the-docker-image)
- [Listing Docker Images](#listing-docker-images)
- [Tagging Docker Images](#tagging-docker-images)
- [Verifying the Docker Image](#verifying-the-docker-image)
- [Running the Docker Container](#running-the-docker-container)
- [Checking the Running Container](#checking-the-running-container)
- [Viewing Container Logs](#viewing-container-logs)
- [Accessing the Running Container](#accessing-the-running-container)
- [Stopping the Docker Container](#stopping-the-docker-container)
- [Restarting the Docker Container](#restarting-the-docker-container)
- [Removing the Docker Container](#removing-the-docker-container)
- [Removing the Docker Image](#removing-the-docker-image)
- [Cleaning Up Unused Resources](#cleaning-up-unused-resources)

---

## Building the Docker Image

To build a Docker image, execute the following command:

```bash
docker build -t <image_name> .
```

Replace `<image_name>` with your preferred image name. For example:

```bash
docker build -t fastapi-image .
```

---

## Listing Docker Images

To list all Docker images available on your system, use:

```bash
docker images
```

---

## Tagging Docker Images

To tag a Docker image with a specific version or repository, run:

```bash
docker tag <image_name>:<tag> <repository>/<image_name>:<new_tag>
```

For example, tagging a local image before pushing it to a repository:

```bash
docker tag fastapi-image:latest myrepo/fastapi-image:v1.0.0
```

---

## Verifying the Docker Image

After building, verify the image creation by listing all images:

```bash
docker images
```

This command displays the repository, tag, image ID, creation time, and size of each image.

---

## Running the Docker Container

To run a Docker image in a container, use:

```bash
docker run --name <container_name> -d -p 80:80 <image_name>
```

Replace `<container_name>` with your desired container name and `<image_name>` with the name of the image you built.

Example:

```bash
docker run --name fastapi-container -d -p 80:80 fastapi-image
```

**Note:** The `-d` flag runs the container in detached mode (in the background). Omit the `-d` flag to run the container in the foreground.

---

## Checking the Running Container

To check if your container is running, execute:

```bash
docker ps
```

This command lists all active containers. For details on all containers (including stopped ones), use:

```bash
docker ps -a
```

---

## Viewing Container Logs

To view the logs of a running container, use:

```bash
docker logs <container_name>
```

For real-time logs with live updates, append the `-f` flag:

```bash
docker logs -f <container_name>
```

---

## Accessing the Running Container

To gain access to a running container’s shell, use:

```bash
docker exec -it <container_name> /bin/bash
```

Replace `<container_name>` with the name of your running container. For containers running non-Bash shells, adjust the shell command accordingly (e.g., `/bin/sh`).

---

## Stopping the Docker Container

To stop a running container, execute:

```bash
docker stop <container_name>
```

Example:

```bash
docker stop fastapi-container
```

---

## Restarting the Docker Container

To restart a stopped container, use:

```bash
docker start <container_name>
```

To restart a container with its original configuration, use:

```bash
docker restart <container_name>
```

---

## Removing the Docker Container

To remove a container after stopping it, use:

```bash
docker rm <container_name>
```

Example:

```bash
docker rm fastapi-container
```

To forcefully remove a running container, use:

```bash
docker rm -f <container_name>
```

---

## Removing the Docker Image

To delete an image from your system, use:

```bash
docker rmi <image_name>
```

Example:

```bash
docker rmi fastapi-image
```

To remove an image forcefully (if dependent containers exist), add the `-f` flag:

```bash
docker rmi -f <image_name>
```

---

## Cleaning Up Unused Resources

To remove unused images, containers, networks, and dangling build cache, use:

```bash
docker system prune
```

To also remove unused volumes, append the `--volumes` flag:

```bash
docker system prune --volumes
```

**Caution:** This operation is irreversible, so ensure no important resources are unintentionally deleted.

---

```

This enhanced version of the documentation includes additional commands, a more polished structure, and clear instructions. Feel free to modify or expand upon this as needed!