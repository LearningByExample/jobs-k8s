#!/bin/sh -

set -o errexit

KUBECMD="kubectl"
if  [ -x "$(command -v microk8s.kubectl)" ]; then
  KUBECMD="microk8s.kubectl"
fi

$KUBECMD delete jobs --selector=job-group=movie-load

$KUBECMD create -f database-load.yml