       #!/bin/bash
       set -e
    echo "Building the Docker image..."
    sleep 3
    docker build -t $DOCKER_IMAGE .