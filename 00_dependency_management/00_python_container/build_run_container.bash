

# Build the Docker image from the Dockerfile in the 00_python_container/ directory
docker build -t python_container:latest ./

# Run container
docker run python_container:latest

# List all running containers
docker ps

# See all containers (also stopped ones)
docker ps -all

# Run container and enter it interactively use standard entry point
docker run -it python_container:latest

# Run container and enter it interactively overwriting the entry point
docker run -it python_container /bin/bash



