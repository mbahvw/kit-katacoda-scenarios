You can use the `--selector` flag to filter and find resource based on their labels. Let's see how that works:

We just deployed some pod containers in the background in the frontend namespace. We have added different labels to these pods. 

1. Let's first show  the pods labels:

    `kubectl get pods -n frontend --show-labels`{{execute}}
 
2. Now, let's  find all the application container pods that have the label `app:web` in the frontend namespace:
   
   `kubectl get pods -n frontend --selector=app=web`{{execute}} 

        Or use the `-l` flag

   `kubectl get pods -n frontend -l app=haproxy`{{execute}}

       You can clear you screen.
   
3. We can use the `--selector ` flag to find resources that do not have a particular. To illustrate, let's find nodes within our cluster that do **NOT** have this taint label `node-role.kubernetes.io/master`. 

   
   `kubectl get node --selector='!node-role.kubernetes.io/master'`{{execute}}


As you can see, ``--selector` could come in very handy when sorting filtering pods with different labels.
