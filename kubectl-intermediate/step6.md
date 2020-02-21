Now that we have created 2 new namespaces, we can deploy a container in each of the namespaces:

Let's deploy a single nginx container application in the `frontend` namespace using the `--generator` flag: 
  
`kubectl run nginx --generator=run-pod/v1 --image=nginx --namespace frontend`{{execute}}

*The `--generator` flag tells the `kuebctl run` command to pin the resource apiVersion*

Let's use another method to deploy a single redis container into the backend namespace using  `--restart=Never`

`kubectl run redis  --image=redis -n backend --restart=Never `{{execute}}

The `--restart=Never` flag tells the `kubectl run` command to create a single pod

Let's verify whether our containers have been created:

`kubectl get pods`{{execute}} 
 
Oops!! You won't see any resources, because you are currenyly in the default namespace and the new containers are deployed in different namespaces. To retrieve and display the newly created containers, we need to pass the `--namespace NAMESPACE-NAME` flag  or the `-n`  flag short for `--namespace` flag.

Let's retrive the nginx pod from the frontend namespace, we run th
e following commmand:

 `kubectl get pods --namespace frontend`{{execute}}

We can do the same to get the pods in the backend namespace
  
`kubectl get pods -n backend`{{execute}}

