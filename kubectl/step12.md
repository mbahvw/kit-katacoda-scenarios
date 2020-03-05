If you want to sort the output of queries, you can use the `--sort-by` flag:

`kubectl get pod --sort-by=.` by a particular data point.

In this case, let's sort by the Pod's IP address:
`kubectl get pod -o wide --sort-by=.status.podIP`{{execute}}

You should see the Pods IP addresses are listed in descending order.
