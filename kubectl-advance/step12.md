The `kubectl top` allows you to see the resource consumption for nodes or pods. However, in order to use the `top` command, we have to install a metrics server.

Let's install a metrics server pod. To begin, let's clone the git repos below:

`git clone https://github.com/mbahvw/kubernetes-metrics-server.git`{{execute}}

Run the `kubectl apply -f ` command to deploy the metric server and its components:

`kubectl apply -f kubernetes-metrics-server/`{{execute}}

Let's verify that we are getting a response from the metric server API:

`kubectl  get --raw /apis/metrics.k8s.io/`{{execute}}

If you get a response similar to the one below it means the metrics is up and running:

```
{"kind":"APIGroup","apiVersion":"v1","name":"metrics.k8s.io","versions":[{"groupVersion":"metrics.k8s.io/v1beta1","version":"v1beta1"}],"preferredVersion":{"groupVersion":"metrics.k8s.io/v1beta1","version":"v1beta1"}}
```

We need to give the metrics server a few minutes in order to collect data.


Let's get the CPU and memory utilization for all nodes in the cluster:

`kubectl top nodes`{{execute}}

Now, let's try to get the memory and CPU utilization of pods in all namespaces:

`kubectl top pods --all-namespaces`{{execute}}

We can also gather the metrics of all the pods in the kube-system namespace:

`kubectl top pods -n kube-system`{{execute}}
