#!/bin/bash

# deleting  deployment configs into each of the namespaces above
kubectl ns default

cd ~/deployment

kubectl delete -f explore-deploy.yaml

#Delete the namespaces:
kubectl delete namespace developers
kubectl delete namespace dbadmins
kubectl delete namespace admins
