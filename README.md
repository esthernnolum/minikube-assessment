# Devops Engineer Assessment

The assiassessment consists of two major parts:
## 1. Coding a web server

This project consists of a Python webserver (app.py) that only accepts GET requests on the path /foo and returns a JSON response.

I've used skyblue as my favourite colour in the code

## 2. Automating its deployment into a Kubernetes cluster.

### Follow the steps below to deploy (assumed that minikube is already installed and configured with a working default driver)

### clone this repository on the minikube using the command below
```
git clone https://github.com/esthernnolum/minikube-assessment.git
```
### cd into the repo
```
cd minikube-assessment
```
### run the build-and-deploy.sh script
```
./build-and-deploy.sh
```
I've added comments to various portions of the scripts/code to help in understanding what was done.