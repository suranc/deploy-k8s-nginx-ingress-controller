#!/bin/bash

# Update kubernetes-ingress submodule
git submodule update --init --recursive

# Enter into kubernetes-ingress repo
cd kubernetes-ingress

kubectl apply -f common/ns-and-sa.yaml
kubectl apply -f common/default-server-secret.yaml
kubectl apply -f common/nginx-config.yaml
kubectl apply -f rbac/rbac.yaml
kubectl apply -f deployment/nginx-ingress.yaml
kubectl apply -f service/loadbalancer.yaml