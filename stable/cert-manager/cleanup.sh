#!/bin/bash

kubectl delete customresourcedefinitions.apiextensions.k8s.io certificates.certmanager.k8s.io
kubectl delete customresourcedefinitions.apiextensions.k8s.io clusterissuers.certmanager.k8s.io
kubectl delete customresourcedefinitions.apiextensions.k8s.io issuers.certmanager.k8s.io
kubectl delete -f ClusterIssuers.yaml
helm delete --purge cert-manager