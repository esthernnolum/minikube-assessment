#!/bin/bash
# bash script that builds, packages and deploys the python apllication aslo take care of configuring the minikube cluster, and ensuring the webserver endpoint is available.
#build image

## Script should be executed from the repo main dir

## To point your shell to minikube's docker-daemon
eval $(minikube -p minikube docker-env)

#build webserver image
docker build -t infra-task .

# start Minikube
minikube start

minikube addons enable ingress

# set Minikube context
kubectl config use-context minikube

# disable validation for servers that have ingress nginx controller has the validating webhook enabled
kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission

# apply the Kubernetes manifest to deploy
kubectl apply -f webserver.yml

# Wait for the deployment to be ready
kubectl rollout status deployment/webserver-deploy

# Add Ingress host to /etc/hosts
echo "$(minikube ip) bar.local" | sudo tee -a /etc/hosts
curl http://bar.local/foo
echo "Webserver deployed at http://bar.local/foo and can be accessed from your browser"
