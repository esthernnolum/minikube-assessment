#!/bin/bash
# bash script that builds, packages and deploys the python apllication aslo take care of configuring the minikube cluster, and ensuring the webserver endpoint is available.
#build image

## Script should be executed from the repo main dir
#build webserver image
docker build -t infra-task .

# start Minikube
minikube start

minikube addons enable ingress

# set Minikube context
kubectl config use-context minikube

# apply the Kubernetes manifest to deploy
kubectl apply -f webserver.yml

# Wait for the deployment to be ready
kubectl rollout status deployment/web-server

# Add Ingress host to /etc/hosts
echo "$(minikube ip) bar.local" | sudo tee -a /etc/hosts

echo "Webserver deployed at http://bar.local/foo and can be accessed from your browser"

# Open the deployed URL in a web browser (Linux only)
xdg-open http://bar.local/foo
