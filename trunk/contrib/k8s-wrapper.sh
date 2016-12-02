#!/bin/bash

export PODS_CACHE_FILE=/tmp/psdoom-k8s_pods_name.txt
export K8S_PODS_OUTPUT=/tmp/psdoom-k8s_pods_output.txt
export TEMP_K8S_PODS_OUTPUT=/tmp/temp_psdoom-k8s_pods_output.txt
export JSONPATH=$'{range .items[*]}{@.metadata.name} {@.status.phase}\n{end}'
/usr/local/bin/kubectl --context=movio-dev --namespace=mc-blue get pods --output=jsonpath="${JSONPATH}" > $K8S_PODS_OUTPUT 
