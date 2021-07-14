#!/bin/bash

set -eu

HERE="$(dirname "$(readlink -f "$BASH_SOURCE")")"
REPO_ROOT="$(realpath "${HERE}/..")"

cd "${REPO_ROOT}"

DOCKERFILE="${REPO_ROOT}/docker/Build.Dockerfile"
NAME="autin_scola_website"
TAG="$(git rev-parse HEAD)"
NAME_TAG="${NAME}:${TAG}"

echo "Building a docker image for building the site..."
DOCKER_BUILDKIT=1 docker build --file "${DOCKERFILE}" --tag "${NAME_TAG}" .
echo "Successfully built a docker image for building the site."

MOUNT_SOURCE="${REPO_ROOT}/docs"
MOUNT_DEST=/website/docs
echo "Building the site..."
docker run --mount type=bind,src="${MOUNT_SOURCE}",dst="${MOUNT_DEST}" "${NAME_TAG}"
echo "Successfully built the site."
