Let's look at the Pods in the cluster.

`kubectl get pods`{{execute}}

At this moment in the cluster, this command will not show any Pods running because it shows the Pods in the default Namespace. We currently, do not have any Pods in that Namespace.

**Pro Tip**: 
`kubectl get po` is a shorten version of the command above.