#!/usr/bin/env bash

set -e

echo "" > crd.yaml

crds=(
  sources/argo-cd/charts/argo-cd/crds/*.yaml
  sources/kong-ingress-controller/charts/kong/crds/*.yaml
  sources/postgres-operator/charts/postgres-operator/crds/*.yaml
  sources/prometheus/charts/kube-prometheus-stack/crds/*.yaml
  sources/sealed-secrets/helm/sealed-secrets/crds/*.yaml
)

for crd in "${crds[@]}"; do
  echo "---" >> crd.yaml
  cat "$crd" >> crd.yaml
done
