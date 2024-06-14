       #!/bin/bash
    echo "Building the Docker image..."
    sleep 3
    docker build -t $DOCKER_IMAGE .