kubectl create -f misc/monitoring-namespace.yaml

kubectl -n monitoring create -f .\pgts\
kubectl -n monitoring create -f .\prom\
