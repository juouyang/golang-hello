# golang-hello

```
helm install \
    --namespace hello --create-namespace \
    golang-hello manifests/helm/
```

```
helm uninstall golang-hello
# kubectl delete ns hello
```