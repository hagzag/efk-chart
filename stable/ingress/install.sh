#!/usr/bin/env bash

# use custom wildecard certificate for your domain e.g *.exmaple.com
# kubectl create secret generic ca-secret \
#         --from-file=../../../certs/wildecard-ssl/<exmaple>.ca-bundle \
#         --from-file=../../../certs/wildecard-ssl/<exmaple>.key \
#         --from-file=../../../certs/wildecard-ssl/STAR_<exmaple>_com.crt

helm upgrade ingress --install stable/nginx-ingress --set rbac.create=true --namespace ingress

