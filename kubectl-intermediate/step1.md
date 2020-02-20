
A context in kubernetes is what ties a cluster to a user, and as a kubernetes user, you may have access to multiple clusters. 
let's review the current cluster configuration:

`kubectl config view`{{execute}}

Let's run the command below to  only list the clusters

`kubectl config get-clusters`{{execute}}

As you can see, there is currently one cluster named kubernetes and one user kubernetes-admin. In this case, the context is kubernetes-admin@kubernetes.

To see the current context, run the below command:

`kubectl config current-context`{{execute}}

Let's  add a new cluster/context on the next step.


