# Prometheus
Kubenetes deployment for Prometheus

# Design
![Alt text](design/metrics-design.png?raw=true "Title")



# Build commands
```bash
# Set up project
create-all.bat

# Delete entire project
delete-all.bat
```

# Extras

```bash
kubectl create -f kubernetes-dashboard.yaml

# Find user secret
kubectl -n kube-system get secrets

# Get user token
kubectl -n kube-system describe default-token-dqwm8

# Navigate to dashboard
http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default

# replace 31204 with port shown when you check kubectl get services
psql -h localhost -U postgresadmin --password -p 31614 postgresdb
```
# Navigate to dashboard
http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default

# If namespace refuses to die:
```bash
kubectl get namespace [namespace-to-kill] -o json > tmp.json
curl -k -H "Content-Type: application/json" -X PUT --data-binary @tmp.json [dashboard-address, ie localhost:8001]/api/v1/namespaces/[namespace-to-kill]/finalize

kubectl get namespace monitoring -o json > tmp.json
curl -k -H "Content-Type: application/json" -X PUT --data-binary @tmp.json localhost:8001/api/v1/namespaces/monitoring/finalize
```
