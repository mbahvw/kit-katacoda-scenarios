#!/bin/bash

# delete existing pods
kubectl delete pod/nginx -n frontend
kubectl delete pod/redis -n backend

# Change directory to the home user

cd ~/

kubectl create -f  label-deploy.yaml




