### Running command: This created a new Docker Container with port 8080 called webserver running NGINX image
    `docker run -d -p 8080:80 --name webserver nginx`
## We can now go to localhost:8080 and access the nginx locally

### Stopping the container we run the command using the the container NAME
`docker stop webserver` 

### When we do the command "docker stop webserver" - this container is still in memory

`docker rm webserver`

### ^^^ ths command removes the container from memory

### We still have the image stored so we use the following

`docker rmi nginx`

This commands deletes the image 