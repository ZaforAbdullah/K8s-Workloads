#### Install Minikube & Kubectl

* ```curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/```
* ```curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl```
* ```sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl```
* ```minikube start```
* ```minikube dashboard```
### Configures local Docker client to use the Docker daemon running inside Minikube cluster
```
eval $(minikube -p minikube docker-env)
```
### Build Docker image & Run Docker container
```
docker build -t nodejs .
```
```
docker run -d -p 8080:3000 --restart=on-failure nodejs
```

### Delete all existing K8s rosource with shell script
```
./shell.sh
```


#### Directory/Codebase Structure
```
K8s-Workloads
|-- 1. Pods
|   |-- pods.yaml
|   |-- README.md
|-- 2. Workload Management
|   |-- 1. Deployments
|   |   |-- deployments.yaml
|   |   |-- README.md
|   |-- 2. ReplicaSet
|   |   |-- README.md
|   |   |-- replicaSet.yaml
|   |-- 3. StatefulSets
|   |   |-- README.md
|   |   |-- statefulSets.yaml
|   |-- 4. DaemonSet
|   |   |-- daemonSet.yaml
|   |   |-- README.md
|   |-- 5. Jobs
|   |   |-- jobs.yaml
|   |   |-- README.md
|   |-- 6. CronJob
|   |   |-- cronJob.yaml
|   |   |-- README.md
|   |-- 7. ReplicationController
|   |   |-- README.md
|   |   |-- replicationController.yaml
|-- Node.js Web Application
|   |-- Dockerfile
|   |-- index.js
|-- README.md
|-- shell.sh
```

