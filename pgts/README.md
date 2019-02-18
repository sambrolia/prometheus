# Prometheus

Resource definitions for defining PostGreSQL Database with TimeScaleDB and pg_prometheus plugins, in Kubernetes.

# Prerequisites

No Requirments

# Design

![Alt text](../design/pgts-design.png?raw=true "Title")

* The PostGreSQL database has the TimescaleDB installed to allow for better performance with metrics data.  
* The pg_prometheus plugin is installed to allow for PromQL queries and better interaction with prometheus.  