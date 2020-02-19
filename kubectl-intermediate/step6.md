If you have installed kubectx using some package management tool, then kubens would be also installed. Otherwise install.

In the step 4, we installed kubectx as well as kubens.
To list all the namespaces, run:

`kubens`{{execute}}

Notice again, the current active namespace `default` is highlighted in yellow

Now, let's switch  to the frontend namespace:

`kubens frontend`{{execute}}

Let's list the pods

`kubectl get pods`{{execute}}

There is no need to add the `-n` or `--namespace` flag.

Let's switch back to the default namespace

`kubens default`{{execute}}