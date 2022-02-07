#!/usr/bin/env bash

echo "" > crd.yaml

crds=(
  sources/argo-cd/manifests/crds/*-crd.yaml
  sources/sealed-secrets/helm/sealed-secrets/crds/sealedsecret-crd.yaml
  sources/prometheus-operator/*.yaml
  kong-ingress-controller/charts/kong/crds/custom-resource-definitions.yaml
)

for crd in "${crds[@]}"; do
  echo "---" >> crd.yaml
  cat "$crd" >> crd.yaml
done
