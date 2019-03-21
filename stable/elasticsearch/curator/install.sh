#!/usr/bin/env bash


helm upgrade --install elasticsearch-curator -f values.yaml stable/elasticsearch-curator --namespace logging
