To create Jobs object
```
kubectl apply -f jobs.yaml
```
To remove Jobs object
```
kubectl delete -f jobs.yaml
```
minikube start --feature-gates=JobSuccessPolicy=true