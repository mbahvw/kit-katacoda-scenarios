#!/bin/bash
kubectx  kubernetes-admin@kubernetes
kubens default
#kubectl config set-context --current --namespace=default

kubectl delete pod nginx -n frontend 
kubectl delete pod nginx -n backend 
