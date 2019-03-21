#!/usr/bin/env bash

kubectl get ns | grep logging || kubectl create namespace logging
kubectl apply -f kibana-svc.yml
kubectl apply -f kibana-deploy.yml
kubectl apply -f kibana-igs.yml