#!/bin/bash

#Let's use the  existing kubernetes-admin user and create a cluster and name it development:

#SERVER=$(cat ~/.kube/config  | grep server | cut -d: -f 2-4)

#kubectl config set-cluster development --server=$(echo $SERVER) --certificate-authority=/etc/kubernetes/pki/ca.crt

#Let's check the cluster config and see if the cluster has been added

#`kubectl config get-clusters`{{execute}}


#Now, let's create a context and call it dev-context  and tie to the kubernetes-admin user to it:

#kubectl config set-context dev-context --kubernetes --user=kubernetes-admin

# Let's verify whether the context has been created
#`kubectl  config get-contexts`{{execute}}

#As you can see, both the dev-context is listed.
# Create a cluste
#kubectl config set-cluster development --server=$(echo $SERVER) --certificate-authority=/etc/kubernetes/pki/ca.crt
