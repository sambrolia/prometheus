# prometheus
Kubenetes deployment for Prometheus

# Helpful commands
```bash
# Add "-n [namespace]" after kubectl to target a specific namespace
kubectl delete daemonsets,replicasets,services,deployments,pods,rc,cm,statefulsets,pv,pvc --all
```

# If namespace refuses to die:
```bash
kubectl get namespace [namespace-to-kill] -o json > tmp.json
curl -k -H "Content-Type: application/json" -X PUT --data-binary @tmp.json [dashboard-address, ie localhost:8001]/api/v1/namespaces/[namespace-to-kill]/finalize

kubectl get namespace monitoring -o json > tmp.json
curl -k -H "Content-Type: application/json" -X PUT --data-binary @tmp.json localhost:8001/api/v1/namespaces/monitoring/finalize
```

# Build commands
```bash
kubectl create -f kubernetes-dashboard.yaml

# Find user secret
kubectl -n kube-system get secrets

# Get user token
kubectl -n kube-system describe secret default-token-dqwm8

# Navigate to dashboard
http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default

# Set up
create-all.bat

# Helpful commands
kubectl -n monitoring logs prometheus-deployment-676bd4d59d-gxqh9 prometheus1

# replace 31204 with port shown when you check kubectl get services
psql -h localhost -U postgresadmin --password -p 31204 postgresdb
```

