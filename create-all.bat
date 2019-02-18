kubectl create -f monitoring-namespace.yaml

kubectl create -f prometheus-config-map.yaml
kubectl create -f prometheus-deployment.yaml

kubectl create -f pg-prometheus-config-map.yaml
kubectl create -f pg-prometheus-deployment.yaml
