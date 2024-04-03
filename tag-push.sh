#!/bin/bash

# Usage function
usage() {
    echo "Usage: $0 <image_name> <tag>"
    echo "Example: $0 my_image latest"
    exit 1
}

# Check if required parameters are provided
if [ "$#" -ne 2 ]; then
    usage
fi

# Set parameters
IMAGE_NAME="$1"
TAG="$2"
DOCKER_REGISTRY="your_registry_address.com"  # Docker Registry URL (örneğin: docker.io, quay.io)

# Tag the image
docker tag "${IMAGE_NAME}" "${DOCKER_REGISTRY}/${IMAGE_NAME}:${TAG}"

# Push the tagged image
docker push "${DOCKER_REGISTRY}/${IMAGE_NAME}:${TAG}"