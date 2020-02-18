# Switch between namespaces

Let output all namespaces in the current cluster
`kubectl get namespaces`{{execute}}
 
 We can also use the shortened namepace opttion  `kubectl get ns`

 Let's create a couple namspaces and and deployment containers
 - create frontend namespace:
   `kubectl create namespace frontend`{{execute}}
 - Create backend namespace:
 `kubectl crerate ns backend`{{execute}}

 Now, let's deploy a container pod  in each of the namespaces
 - Deploy an nginx container into the frontend namespace
 `kubectl run nginx --generator=run-pod/v1 --image=nginx --namespace frontend`{{execute}}
- Deploy a redis container into the backend namespace
  `kubectl run nginx --generator=run-pod/v1 --image =redis -n backend`{{execute}}

Currently, cluster is set to the default space.If you run the `kubectl get pods`{{execute}} , you will not get any resource. In order to show the newly created pods, we need to add `--namespace NAMESPACE-NAME` flag.

- Let's get the nginx pod in the frontend namespace
  `kubectl get pods --namespace frontend
- We can do the same to get the pod/s in the backend namespace
  `kubectl get pods -n backend`{{execute}}

Now, you can switch namespaces and save the namespace for all subsequent kubectl commands in that context. Let's switch to the frontend namespace:
`kubectl config set-context --current --namespace=frontend`{{execute}}

So, if you are constantly switching namespaces and want to avoid using the long kubectl above, you can use `kubens` which is bundled with the `kubectx` command utility.