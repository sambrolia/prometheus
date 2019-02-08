# prometheus
Kubenetes deployment for Prometheus

# Helpful commands
```bash
# Add "-n [namespace]" after kubectl to target a specific namespace
kubectl delete daemonsets,replicasets,services,deployments,pods,rc,cm,statefulsets --all
```

# If namespace refuses to die:
```bash
kubectl get namespace [namespace-to-kill] -o json > tmp.json
curl -k -H "Content-Type: application/json" -X PUT --data-binary @tmp.json [dashboard-address, ie localhost:8001]/api/v1/namespaces/[namespace-to-kill]/finalize
```

# Build commands
```bash
kubectl create -f prometheus1-config-map.yaml
kubectl create -f prometheus2-config-map.yaml
kubectl create -f prometheus-deployment.yaml
kubectl create -f prometheus-service.yaml

kubectl create -f pg-prometheus-config-map.yaml
kubectl create -f pg-prometheus-storage.yaml
kubectl create -f pg-prometheus-deployment.yaml
kubectl create -f pg-prometheus-service.yaml

# replace 31204 with port shown when you check kubectl get services
psql -h localhost -U postgresadmin --password -p 31204 postgresdb
```

