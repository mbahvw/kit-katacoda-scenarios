# Interacting  with node - cordon


Let's now try to get the pods that are deployed in the master node and assign them to a variable:

`POD_MASTER=$(kubectl get pods -o=jsonpath='{.items[?(@.spec.nodeName == "master")].metadata.name}')`{{execute}}

Now, let's run the pod-dive plugin:

`kubectl pod-dive $POD_MASTER`{{execute}}

*The output shows a nice summary of tre pod's workload tree*

Before we drain the node, we need first to cordon it, which means we need to ensure that no pod can be scheduled into the node. Let's go ahead and cordon `node01`:

`kubectl cordon node01`{{execute}}

If you list the nodes now, you will find the status of  `node01`  set to `Ready,SchedulingDisabled`:
`kubectl get nodes`{{execute}}

Please click on the Continue to move to Draining node -Part III