# Main script execution
#!/bin/bash
echo "Starting build process..."
sleep 3
cleanup
build_docker
modify_app
build_docker
run_docker
echo "Build process completed successfully."