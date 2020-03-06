In step 4, we installed `kubectx` as well as `kubens`. Let's list all the namespaces using the `kubens` command. Type the below command:

`kubens`{{execute}}

Notice again, the current active namespace `default` is highlighted in yellow.

Now, let's switch to the `frontend` namespace by typing the below command:

`kubens frontend`{{execute}}

Let's list the pods:

`kubectl get pods`{{execute}}

There is no need to add the `-n` or `--namespace` flag.

Let's now switch back to the `default` namespace:

`kubens default`{{execute}}

 Let's clean up the environment by deleting the pods we deployed in the previous steps:

To delete the `nginx` pod in the `frontend` namespace, type the below command:

`kubectl delete pod nginx -n frontend`{{execute}}

Wait for the prompt to return, as it may take some time.

Now delete the `redis` pod in the `backend` namespace:

`kubectl delete pod redis -n  backend`{{execute}}

Verify that the pods no longer exist before moving on to the next step by typing:

`kubectl get pods -n frontend`{{execute}}

`kubectl get pods -n backend`{{execute}}
