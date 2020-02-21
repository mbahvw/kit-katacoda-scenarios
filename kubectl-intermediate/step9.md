You can use the `--selector` flag to filter and find resources based on their labels. Let's see how that works.

We just deployed some container pods in the frontend namespace and added different labels to these pods. Please allow a minute or two for the deployment to complete.

Let's get all the pods with their labels by typing the command below:

`kubectl get pods -n frontend --show-labels`{{execute}}
 
Now, let's  find all the container pods that have the label `app:web` in the frontend namespace:
   
`kubectl get pods -n frontend --selector=app=web`{{execute}} 

You can also use the `-l` flag, which is short `--selector`

Let's get all the container pods that are lebeled with `app=haproxy`:

`kubectl get pods -n frontend -l app=haproxy`{{execute}}
   

The `--selector ` flag can also be use to find resources that do **NOT** have a certain label. To illustrate, let's find nodes within our cluster that do **NOT** have the taint label: `node-role.kubernetes.io/master`. Type or click on the command below:
   
`kubectl get node --selector='!node-role.kubernetes.io/master'`{{execute}}


As you can see, ``--selector` could come in very handy when identifying thousand of pods with different labels.

