#!/usr/bin/env bash

kubectl get ns | grep logging || kubectl create namespace logging
#kubectl apply -f fluentd-sa.yml
#kubectl apply -f fluentd-crole.yml
#kubectl apply -f fluentd-croleb.yml
#kubectl apply -f fluentd-ds.yml
helm upgrade --install fluent-bit stable/fluent-bit -f values.yaml --version 1.3.2
