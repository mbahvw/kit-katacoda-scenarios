Let's now try to get the pods that are deployed on the master node and assign them to a variable:  

`POD_MASTER=$(kubectl get pods -o=jsonpath='{.items[?(@.spec.nodeName == "master")].metadata.name}')  && echo $POD_MASTER`{{execute}}  

Now, let's run the pod-dive plugin:  

`kubectl pod-dive $POD_MASTER`{{execute}}  

*This output shows a nice summary of the pod's resource tree.*  

Before we drain the node, we will `cordon` it first. `cordon` means ensuring that no pod can be scheduled on the particular node.  

Let's go ahead and cordon `node01`:  

`kubectl cordon node01`{{execute}}  

If you list the nodes now, you will find the status of `node01` set to `Ready,SchedulingDisabled`: 
 
`kubectl get nodes`{{execute}}  

Please Continue to the next step.
