#!/bin/sh -

set -o errexit

docker build . -t localhost:32000/movie-load:registry
docker push localhost:32000/movie-load