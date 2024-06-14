   #!/bin/bash
    echo "Cleaning up previous build artifacts..."
    sleep 3
    # Add commands to clean up previous build artifacts
    docker rm -f $(docker ps -aq) || true
    docker rmi -f $(docker images) || true
    echo "Cleanup done."