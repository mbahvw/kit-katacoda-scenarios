Let's deploy an nginx application in the default namespace using the kubectl command line method:

`kubectl create deployment nginx-deployment --image=nginx:1.16`{{execute}}

We can verify whether the resources have been created:

Let's verify the deployment:
  
`kubectl get deploy/nginx-deployment`{{execute}} 

We can also verify whether the Pods have been created:

`kubectl get pods`{{execute}}

Now let's scale the deployment to 5 replicas:
  
`kubectl scale deploy/nginx-deployment --replicas=5`{{execute}}

Verify whether pods has been scaled: 
`kubectl get pods`{{execute}} 

You can pass the `-w` flag to watch  the scaling live.

Let's now scale the deployment down to 1 replica:

`kubectl scale deploy/nginx-deployment --replicas=1`{{execute}}

Verify whether the pods has been scaled down to 1 replicas:
  
`kubectl get pods`{{execute}}