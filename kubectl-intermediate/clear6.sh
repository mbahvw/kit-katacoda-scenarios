#!/bin/bash
# Delete the pod before next step

# delete existing pods
kubectl delete pod/nginx -n frontend
kubectl delete pod/redis -n backend

clear
