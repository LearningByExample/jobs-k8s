#!/bin/sh -

set -o errexit

microk8s.kubectl delete jobs --selector=job-group=movie-load

microk8s.kubectl create -f database-load.yml