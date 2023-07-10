#!/usr/bin/env bash

set -euo pipefail

docker_image=davetang/bookdown:4.3.0

docker run \
   --rm \
   -v $(pwd):$(pwd) \
   -w $(pwd) \
   -u $(id -u):$(id -g) \
   ${docker_image} \
   Rscript -e "bookdown::render_book()"

>&2 echo Done
exit 0
