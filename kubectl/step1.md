We a have two Node Kubernetes cluster deployed and ready. So let’s look at the the Kubernetes cluster information. 

Let’s examine Kubernetes version running in the cluster.

`kubectl version`{{execute}}

You’ll not only see the Kubernetes version but the Build Date and the Go Version. Notice that the Kubernetes version might not always match.

You might need to gather information about the endpoints of master and services in the cluster. This will come in handy if you have to troubleshoot your cluster.


`kubectl cluster-info`{{execute}}