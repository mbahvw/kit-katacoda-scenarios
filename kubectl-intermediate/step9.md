You can use the `--selector` flag to filter and find resources based on their assigned labels. Let's see how that works.

We just deployed some pods in the frontend namespace and added different labels to these pods. Please allow a minute or two for the deployment to complete.

Let's get all the pods with their labels by typing the command below:

`kubectl get pods -n frontend --show-labels`{{execute}}

Now, let's  find all the pods that have the label `app: web` in the `frontend` namespace:

`kubectl get pods -n frontend --selector=app=web`{{execute}}

You can also use the `-l` flag, which represents `label` and is equivalent to the `--selector` flag.

Let's get all the pods that are labeled with `app=haproxy`:

`kubectl get pods -n frontend -l app=haproxy`{{execute}}


The `--selector` flag can also be used to find resources that do **NOT** have a certain label. To illustrate this, let's find nodes within our cluster that do **NOT** have the taint label: `node-role.kubernetes.io/master`. Type the below command:

`kubectl get nodes --selector='!node-role.kubernetes.io/master'`{{execute}}

As you can see, the `--selector` or `-l` flags could come in very handy when identifying thousands of kubernetes resources with differing labels.
