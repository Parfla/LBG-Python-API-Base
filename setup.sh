# Function to run the Docker container
set -e
run_docker() {
    echo "Running Docker container..."
    sleep 3
    docker run -d -p 80:$PORT -e PORT=$PORT $DOCKER_IMAGE
}
