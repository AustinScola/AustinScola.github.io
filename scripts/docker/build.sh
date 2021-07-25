#!/bin/bash

set -eu

HERE="$(dirname "$(readlink -f "$BASH_SOURCE")")"
REPO_ROOT="$(realpath "${HERE}/../..")"

cd "${REPO_ROOT}"

DOCKERFILE="${REPO_ROOT}/docker/Dockerfile"
NAME="austin_scola_website"
TAG="$(git rev-parse HEAD)"
NAME_TAG="${NAME}:${TAG}"

echo "Building the docker image..."
DOCKER_BUILDKIT=1 docker build --file "${DOCKERFILE}" --tag "${NAME_TAG}" .
echo "Successfully built the docker image."
