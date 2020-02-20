
A context in kubernetes is what ties a user  to a cluster, and as a kubernetes user, you may have access to multiple clusters. 
let's review the current cluster configuration:

`kubectl config view`{{execute}}

Let's run the command below to list the cluster
`kubectl config get-clusters`{{execute}}

As you can see, there is currently one cluster named kubernetes and one user kubernetes-admin. In this case, the context is kubernetes-admin@kubernetes.

To list the current context, we can run the below command:

`kubectl config current-context`{{execute}}

Let's  add a new context on the next step.


