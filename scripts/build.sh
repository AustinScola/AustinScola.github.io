#!/bin/bash

set -eu

HERE="$(dirname "$(readlink -f "$BASH_SOURCE")")"
REPO_ROOT="$(realpath "${HERE}/..")"

"${REPO_ROOT}/scripts/docker/build.sh"

NAME="austin_scola_website"
TAG="$(git rev-parse HEAD)"
NAME_TAG="${NAME}:${TAG}"

COMMAND="bundle exec jekyll build"

MOUNT_SOURCE="${REPO_ROOT}/docs"
MOUNT_DEST=/website/docs
echo "Building the site..."
docker run \
    --mount type=bind,src="${MOUNT_SOURCE}",dst="${MOUNT_DEST}" \
    --entrypoint /bin/bash \
    "${NAME_TAG}" \
    -c "${COMMAND}"
echo "Successfully built the site."
