#!/usr/bin/env bash
set -eo pipefail

WORKLOAD_DEPLOYMENT=bench-workload

TEMPLATE=$1
export REPLICAS=$2
export WORKERS=$3
export NOISE_REPLICAS=$4
export NOISE_WORKERS=$5

echo "Benchmark:"
echo "    Workload: $REPLICAS replicas, $WORKERS workers per replica"
if [[ $TEMPLATE == "noise" ]]; then
    echo echo "    Noise: $NOISE_REPLICAS replicas, $NOISE_WORKERS workers per replica"
fi

kubectl apply -f namespace.yaml > /dev/null
envsubst < "templates/$TEMPLATE.yaml" | kubectl apply -f -
sleep 330
echo "Complete"
