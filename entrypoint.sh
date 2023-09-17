#!/bin/sh
set -e

namespace=$1
name=$2
build=$3
file=$4

params="--wait "

if [ ! -z "$namespace" ]; then
params="${params} --namespace $namespace"
fi

if [ "$build" == "true" ]; then
params="${params} --build"
fi

if [ ! -z "$file" ]; then
params="${params} --file $file"
fi

echo running: okteto  deploy $params on $(pwd)
okteto deploy $params