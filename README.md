# prometheus
Kubenetes deployment for Prometheus

# Helpful commands
```bash
kubectl delete daemonsets,replicasets,services,deployments,pods,rc --all
```

```bash
kubectl create -f prometheus1-config-map.yaml
kubectl create -f prometheus2-config-map.yaml
kubectl create -f prometheus-deployment.yaml
kubectl create -f prometheus-service.yaml
```

