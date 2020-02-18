# Create a new cluster and context 

Let's use the  existing kubernetes-admin user and create a cluster and name it development 
` ` {{execute}}

Let's check the cluster config and see if the cluster has been added
`kubectl config get-clusters`{{execute}}
`kubectl config set-cluster development --server=$(echo $SERVER) --certificate-authority=/etc/kubernetes/pki/ca.crt`{{execute}}

Now, let's create a context and call it dev  and tie the kubernetes-admin user to it

`kubectl config set-context dev-context@development --cluster=development --user=kubernetes-admin`{{execut}}

Let's verify whether the context has been created
`kubectl  config get-contexts` {{execute}}

As you can see, the dev-context is listed.



