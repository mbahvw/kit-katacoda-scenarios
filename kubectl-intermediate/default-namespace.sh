#!/bin/bash
kubectx  kubernetes-admin@kubernetes
kubens default
#kubectl config set-context --current --namespace=default


# delete existing pods
kubectl delete pod/nginx -n frontend
kubectl delete pod/redis -n backend

