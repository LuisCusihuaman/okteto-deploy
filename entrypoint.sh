#!/bin/sh
set -e

manifest=$1

echo running: okteto deploy -f $manifest
okteto deploy -f $manifest