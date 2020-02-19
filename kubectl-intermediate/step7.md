# Find resource with --selector `-l`

You can use the `--selector` flag to filter and find resource based on their labels. Let's see how that works:

We just deployed some pod containers in the background in both the frontend namespace. We have added different labels to these pods. 

1. Let's first show  the pods labels:

    `kubectl get pods -n frontend --show-labels`{{execute}}
 
 1. Now, let's  find how many pods have the label `app:web` in the frontend namespace:
   
   `kubectl get pods -n frontend --selector=app=web`{{execute}} 

        or use the `-l` flag

   `kubectl get pods -n frontend -l app=web`{{execute}}

2. Let's find the number of pods that are **NOT** part of the frontend  `tier=frontend`
   `kubuctl  get pods --selector='!frontend'`{{execute}}


As you can see, ``--selector` could come in very handy when sorting filtering pods with different labels.
