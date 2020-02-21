In the step 4, we installed kubectx as well as kubens.
To list all the namespaces, type:

`kubens`{{execute}}

Notice again, the current active namespace `default` is highlighted in yellow

Now, let's switch  to the frontend namespace by tyuping:

`kubens frontend`{{execute}}

Let's list the pods:

`kubectl get pods`{{execute}}

There is no need to add the `-n` or `--namespace` flag.

Let's now switch back to the default namespace:

`kubens default`{{execute}}

Clean up the environment by deleting the pods we deployed  in previous step. 

Type or click below:

`kubectl delete pod nginx -n frontend`{{execute}}

`kubectl delete pod nginx -n  backend`{{execute}}

Verify that the pods no longer exist before moving on to the next step by typing:

`kubectl get pods -n frontend`{{execute}}

`kubectl get pods -n backend`{{execute}}