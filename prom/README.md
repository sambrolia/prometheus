# Prometheus

Resource definitions for defining Prometheus + PostGreSQL Adapter in Kubernetes.

# Prerequisites

PostGreSQL TimeScaleDB with pg_prometheus (pgts)

# Design

![Alt text](../design/prom-design.png?raw=true "Title")

* The pg_adapter (prom-adp container) is set up in the pod with prometheus as a side car to allow for easy scaling.  
* All pg_adapters are given the same leader election lock id so only one communicates with the PostGreSQL database at a time.  
* They are given a timeout slightly higher than the prometheus timeout so that as soon as an adapter stops recieving data from its prometheus instance, it will lose the lock and another working prometheus pod would take control of the lock.