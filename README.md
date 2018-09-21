# Deploy Kubernetes nginx-ingress Controller

This repository contains a script to deploy an nginx-ingress ingress controller into kubernetes.  It assumes you are already logged into your desired cluster, and will create the ingress controller in the "nginx-ingress" namespace.

## Creating a Controller

To deploy a controller, run the deploy.sh script: `./deploy.sh`

## Deleting the Controller

To delete the deployed controller, delete the "nginx-ingress" namespace: `kubectl delete namespace nginx-ingress`