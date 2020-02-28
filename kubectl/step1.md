We have a two node Kubernetes cluster deployed and ready. So let’s look at the the Kubernetes cluster information.

Let’s examine the Kubernetes version running in the cluster.

`kubectl version`{{execute}}

You will not only see the `kubectl` client version along with the Kubernetes server version, but also the Build Date and the Go Version. Notice that the Kubernetes version might not always match the Go and Client versions.

To see only the Kubernetes `kubectl` client version and not the Kubernetes version, try the following:

`kubectl version --client=true`{{execute}}


You might need to gather information about the endpoints of the master and services in the cluster. This information will come in handy if you have to troubleshoot your cluster.


`kubectl cluster-info`{{execute}}
