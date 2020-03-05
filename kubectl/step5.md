Let's look at the Pods in the cluster.

`kubectl get pods`{{execute}}

At this moment in the cluster, this command will not show any Pod resources running because our current context is in the `default` Namespace. We currently, do not have any Pods deployed in that Namespace.

**Pro Tip**:
`kubectl get po`{{execute}} is a shortened version of the command above.
