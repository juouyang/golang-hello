# golang-hello

```
argocd app set golang-hello --helm-set demo.k8scicd.image.tag=3c8cc43
argocd app sync golang-hello
```

```
argocd app set golang-hello --values values-production.yaml
```