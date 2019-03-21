#!/usr/bin/env bash

kubectl get ns | grep logging || kubectl create namespace logging
kubectl apply -f es-svc.yml
kubectl apply -f es-sts.yml

# add an internal elb for ec2 nodes running in the vpc using filebeat
# kubectl apply -f es-svc-external.yml