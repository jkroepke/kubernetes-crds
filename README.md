# crd

Location for all used custom resources

It contains
* ArgoCD
* Kong
* Postgres
* Prometheus
* Sealed-Secrets

## Update all CRDs

```bash
git submodule update --remote
./generate.sh 
```
