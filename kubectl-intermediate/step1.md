
A context in kubernetes is what ties a user to a particular cluster and namespace. As a kubernetes user or administrator, you may have to access multiple kubernetes cluster environments. Therefore let's review the current `kubectl` configuration. Type the below command:

`kubectl config view`{{execute}}

We can run the command below to get a list of all our configured clusters we have access to:

`kubectl config get-clusters`{{execute}}

As you can see, there is currently one cluster named kubernetes and one user named kubernetes-admin. In this case, the context is kubernetes-admin@kubernetes.

To see the current context, type the below command:

`kubectl config current-context`{{execute}}

Let's move on to the next step and create a new context.
