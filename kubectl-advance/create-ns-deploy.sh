#!/bin/bash

# Create a new context 

kubectl config set-context test-context --cluster kubernetes --user=kubernetes-admin

# Create 3 namespaces

for x in developers admins dbadmins; do kubectl create namespace $x; done

# creating deployment configs into each of the namespaces above

cd ~/deployment

kubectl create -f explore-deploy.yaml




