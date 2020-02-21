
A context in kubernetes is what ties a user to a cluster, and as a kubernetes user, you may have access to multiple clusters, therefore let's review the current cluster configuration:

`kubectl config view`{{execute}}

We can run the command below to get a list of all clusters:

`kubectl config get-clusters`{{execute}}

As you can see, there is currently one cluster named kubernetes and one user kubernetes-admin. In this case, the context is kubernetes-admin@kubernetes.

To see the current context, we can run the below command:

`kubectl config current-context`{{execute}}

Let's move on to the next step and create new context.


