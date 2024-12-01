# Build the Docker image from the Dockerfile in the 00_python_container/ directory
docker build -t jupyter_container:latest ./

# Run container and enter it interactively use standard entry point
docker run -p 8888:8888 jupyter_container:latest

