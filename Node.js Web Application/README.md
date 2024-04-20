To point shell to minikube's docker-daemon, run:
```
eval $(minikube -p minikube docker-env)
```

Build Docker image
```
docker build -t nodejs .
```

Run Docker image
```
docker run -d -p 8080:3000 --restart=on-failure nodejs
```