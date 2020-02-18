# Contexts and configuration

A context in kubernetes is what ties a cluster to a user, and as a kubernetes user, you may have access to multiple clusters. 
let's review the contexts that is configured currently in this environment
`kubectl config view`{{execute}}

As you can see, there is only one cluster named kubernetes and one user kubernetes-admin. In this case, the context is kubernetes-admin@kubernetes.

To see the current context run the below command:
`kubectl config current-config`{{execute}}

Let's  add a new context and switch to it.


