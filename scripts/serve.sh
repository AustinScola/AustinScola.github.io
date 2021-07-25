#!/bin/bash

set -eu

HERE="$(dirname "$(readlink -f "$BASH_SOURCE")")"
REPO_ROOT="$(realpath "${HERE}/..")"

"${REPO_ROOT}/scripts/docker/build.sh"

NAME="austin_scola_website"
TAG="$(git rev-parse HEAD)"
NAME_TAG="${NAME}:${TAG}"

COMMAND="bundle exec jekyll serve --host 0.0.0.0"

MOUNT_SOURCE="${REPO_ROOT}/docs"
MOUNT_DEST=/website/docs
echo "Serving the site..."
docker run \
    --mount type=bind,src="${MOUNT_SOURCE}",dst="${MOUNT_DEST}" \
    --expose=4000\
    --publish 127.0.0.1:4000:4000 \
    --entrypoint /bin/bash \
    "${NAME_TAG}" \
    -c "${COMMAND}"
