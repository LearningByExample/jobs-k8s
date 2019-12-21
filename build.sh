#!/bin/sh -

docker build . -t localhost:32000/movie-load:registry
docker push localhost:32000/movie-load