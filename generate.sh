#!/usr/bin/env bash

echo "" > crd.yaml

crds=(
  "sources/argo-cd/manifests/crds/application-crd.yaml"
  "sources/argo-cd/manifests/crds/appproject-crd.yaml"
  "sources/sealed-secrets/helm/sealed-secrets/crds/sealedsecret-crd.yaml"
)

for crd in "${crds[@]}"; do
  echo "---" >> crd.yaml
  cat "$crd" >> crd.yaml
done
