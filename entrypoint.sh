#!/bin/sh
set -e

file=$1
build=$2
namespace=$3

params=""

if [ ! -z "$file" ]; then
params="${params} --file $file"
fi

Vif [ "$build" == "true" ]; then
params="${params} --build"
fi

if [ ! -z "$namespace" ]; then
params="${params} --namespace $namespace"
fi

echo running: okteto  deploy $params on $(pwd)
okteto deploy $params