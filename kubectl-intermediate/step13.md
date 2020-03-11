Let's deploy an nginx application in the default namespace using the `kubectl` command line method. Type  the below command:

`kubectl create deployment nginx-deployment --image=nginx:1.16`{{execute}}

We can verify whether the resources have been created:

Verify whether the deployment has been created by typing the below command:

`kubectl get deploy nginx-deployment`{{execute}}

We can also verify whether the Pods have been created by typing the below command:

`kubectl get pods`{{execute}}

Now let's scale the deployment up to 5 replicas by typing the below command:

`kubectl scale deploy nginx-deployment --replicas=5`{{execute}}

Verify whether the pods have been scaled:

`kubectl get pods`{{execute}}

You can pass the `-w` flag to watch  the scaling live.

Let's now scale the deployment down to 1 replica:

`kubectl scale deploy/nginx-deployment --replicas=1`{{execute}}

Verify whether the pods have been scaled down to a single replica:

`kubectl get pods`{{execute}}


**NOTE:** *Scaling a deployment using the imperative `kubectl scale` command is not best practice. The best practice is to manually edit the deployment manifest file and update replicas field, save it, and run the `kubectl apply -f DEPPLYOMET.YAML` command. This way, the deployment manifest file is always the single source of truth.*