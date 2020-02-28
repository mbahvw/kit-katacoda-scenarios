#!/bin/bash

# deleting  deployment configs into each of the namespaces above

cd ~/deployment

kubectl delete -f explore-deploy.yaml

#Delete the namespaces:
kubectl delete ns developers
kubectl delete ns dbadmins
kubectl delete ns admins
