# JBOC - Just a bunch of stuff

Just a few charts I glued together from reading this or tat blog post / fusedays @ Tikal.

## Prequisites - A cluster + Install HELM

* minikube won't do if your going to use ingress & let's encrypt ...
* mac installation:

    ```sh
    brew install kubernetes-cli kubernetes-helm kubectx --with-short-names
    brew upgrade kubernetes-cli kubernetes-helm kubectx
    ```

## cert-manager

Basically used as the SSL provides for you cluster, it integrates with Let's encrypt - please make sure to update your domain suffix - just search n replace `<example>` / `<example.com>` with your domain.
Take a closer look at `stable/cert-manager/ClusterIssuers.yaml` for more info.

## ingress

Standard nginx ingress with autosacling see `insgress/install.sh` for more info. [ Credit - @Rafi & Fuse Day ]

## elasticsearch & Co

What I learned following a blog post of "setting up EFK in 5 minuets" which became 2 long weeks tweeking elasticsearch & using curator for keeping it small ...
See:

* elasticsearch - `stable/elasticsearch/es-cluster/install.sh` for more info
* curator - `stable/elasticsearch/curator/install.sh` for more info
* elastalert - `stable/elasticsearch/elastalert/install.sh` for more info
* kibana - `stable/elasticsearch/elastalert/kibana.sh`
* es-exporter - TBA

## Prometheus Operator

* TBA
>>>>>>> Stashed changes
