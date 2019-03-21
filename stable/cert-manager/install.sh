#!/bin/bash

helm upgrade --install cert-manager \
    --namespace kube-system \
    stable/cert-manager
    
kubectl apply -f ClusterIssuers.yaml
