kubectl create -f monitoring-namespace.yaml

kubectl create -f prometheus1-config-map.yaml
kubectl create -f prometheus2-config-map.yaml
kubectl create -f prometheus-deployment.yaml
kubectl create -f prometheus-service.yaml

kubectl create -f pg-prometheus-config-map.yaml
kubectl create -f pg-prometheus-storage.yaml
kubectl create -f pg-prometheus-deployment.yaml
kubectl create -f pg-prometheus-service.yaml

kubectl create -f prometheus-pg-adapter-deployment.yaml
