
 
 The `kubectl top` allows you to see the resource consumption for nodes or pods, and it needs a metrics server installed in order to output the metrics pods and nodes metrics collected from the metric server.


let's deploy the metric server:
`kubectl create -f ~/metrics/deploy/kubernetes/`{{execute}}

Let's verify that we are getting a response from the metric server API:

`kubectl  get --raw /apis/metrics.k8s.io/`{{execute}}

If you get a response similar to the one below it means the metrics is up and running:
```
{"kind":"APIGroup","apiVersion":"v1","name":"metrics.k8s.io","versions":[{"groupVersion":"metrics.k8s.io/v1beta1","version":"v1beta1"}],"preferredVersion":{"groupVersion":"metrics.k8s.io/v1beta1","version":"v1beta1"}}
```

We need to give the metrics server few minutes in order to collect data.

Now, let's try to get the memory abd CPU utilization of pods in all namespaces:

`kubectl top pods --all-namespaces`{[execute]}

We can also the memory and CPU utilization of pods in the kube-system namespace:
`kubectl get pods -n kube-system`{[execute]}

To get the CPU and memory of all the pods in the cluster:
`kubectl top pods`{{execute}}


The same thing can be done on done, for instance to get the CPU and memory utilization for all nodes in the cluster:

`kubectl top nodes`{{execute}}

 deploy a pod with resource request 
show metrics for pods and nodes with the command `kubectl top node` and `kubectl top pod`



Install the metric server as early as possible:

`git clone https://github.com/kubernetes-sigs/metrics-server.git`

cd metrcis-server

kubectl create -f deploy/kubernetes/

