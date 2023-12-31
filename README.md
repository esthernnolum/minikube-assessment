# Devops Engineer Assessment

The assessment consists of two major parts:
## 1. Coding a web server

This Consists of a Python webserver (app.py) built using the flask framework that only accepts GET requests on the path "/foo" and returns a JSON response.
```
{"myFavouriteColour":SkyBlue}
```
I've used SkyBlue here as my favourite colour in the code

## 2. Automating the project deployment into a Kubernetes (minikube) cluster.

### Follow the steps below to deploy (This assumes that minikube is already installed and configured with a working default driver):

### a. Download the project - clone this repository on the minikube server using the command below
```
git clone https://github.com/esthernnolum/minikube-assessment.git
```
### b. cd into the repo
```
cd minikube-assessment
```
### c. run the build-and-deploy.sh script
```
./build-and-deploy.sh
```
### d. Webserver is deployed and can be accessed from http://bar.local/foo (ensure port 80 is open in the minikube server)
```
curl http://bar.local/foo
```

I've added comments to various portions of the scripts/code to help in understanding what was done.
