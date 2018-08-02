#!/bin/bash

kubectl apply -f namespaces/flux.yaml
kubectl apply -f namespaces/n10-system.yaml
kubectl apply -f ~/sealed-secrets-key.json
kubectl apply -f n10-system/kubeseal/
kubectl apply -f flux/flux-cloud.yaml -f flux/flux-git-deploy.json -f flux/sa.yaml -f flux/memcached.yaml
kubectl apply -f flux/deployment.json
