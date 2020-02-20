
Let's show all namespaces in the current context

`kubectl get namespaces`{{execute}}
 
You can also use the shortened namepace option  `kubectl get ns`

Now, let's deploy a container pod  in each in the frontend and backend namespaces

- Deploy an nginx container into the frontend namespace:
  
 `kubectl run nginx --generator=run-pod/v1 --image=nginx --namespace frontend`{{execute}}

- Deploy a redis container into the backend namespace:

  `kubectl run redis --generator=run-pod/v1 --image=redis -n backend`{{execute}}

Currently, the active namespace is the default namespace. If we run the

 `kubectl get pods`{{execute}} 
 
 We will not get any resource with the above command. In order to show the newly created pods, we need to add `--namespace NAMESPACE-NAME` flag.

- Let's try to get the nginx pod from the frontend namespace

  `kubectl get pods --namespace frontend`{{execute}}

- We can do the same to get the pods in the backend namespace
  
  `kubectl get pods -n backend`{{execute}}

Now, let's switch to the `frontend` namespaces and save it for all subsequent kubectl commands in that context:

`kubectl config set-context --current --namespace=frontend`{{execute}}

You can list the pods in that namespace:

`kubectl get pods`{{execute}}

Now that you are in the fronted namespace, you do not need to add `--namespace` flag.

So, if you are constantly switching namespaces and want to avoid using the long kubectl command above, the `kubens` utility will become handy. It is bundled with the `kubectx` command utility if installed using a package management tool.