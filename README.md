# Docker Project

## Setup

1. Build the Docker image from the Dockerfile at the repository root by running `docker build . -t -p <HOST_PORT>:<CONTAINER_PORT> <TAG_NAME>:<VERSION>` (example: docker build . -t -p 3000:3000  helloworld:latest)

2. Run the web application from your browser using the port <HOST_PORT>. This can be done by typing `localhost:<HOST_PORT>` in your address bar.

3. You can lookup the details of the image created using `docker build` through the `docker images` command. You should find the image `<TAG_NAME>:<VERSION>`
   listed in the table as output.

> NOTE: The lines in the Dockerfile should be ordered such that the lines associated with the image layers that are likely to change most should appear at the bottom.
> The layers are run sequentially from top to bottom and the layers below are dependent on the layers above. The ordering of the layers should adhere to
> the dependencies between the layers but also meet the above requirement. This way, the contents of the top layers (static) will be cached and the top layers
> are not executed each time the Docker image is built. Only the lower layers that have been changed will be run.

## Mounting directories in a container

```bash
docker run -it -v <HOST_PATH>:<CONTAINER_PATH>  <TAG_NAME>:<VERSION> sh 
```

Example:  docker run -it -v /Users/root/test:/test helloworld:latest sh
