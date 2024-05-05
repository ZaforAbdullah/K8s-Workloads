#!/bin/bash

# Delete all services in the default namespace
kubectl delete services --all -n default

# Delete all pods in the default namespace
kubectl delete pods --all -n default --force --grace-period=0

# Delete all jobs in the default namespace
kubectl delete jobs --all -n default

# Delete all replicaset in the default namespace
kubectl delete replicaset --all -n default

# Delete all deployments in the default namespace
kubectl delete deployment --all -n default

# Delete all PodDisruptionBudgets in the default namespace
kubectl delete PodDisruptionBudgets --all -n default

# Delete all HorizontalPodAutoscaler in the default namespace
kubectl delete hpa --all -n default

# Delete all statefulset in the default namespace
kubectl delete sts --all -n default

# Delete all pvc in the default namespace
kubectl delete pvc --all -n default

# Delete all pv in the default namespace
kubectl delete pv --all -n default

# Delete all daemonset in the default namespace
kubectl delete daemonset --all -n default

# Delete all cronjob in the default namespace
kubectl delete cronjob --all -n default

# Delete all ReplicationController in the default namespace
kubectl delete rc --all -n default


