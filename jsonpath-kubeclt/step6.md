### Sort
Sorting can come in very handy:

  `kubectl get nodes --sort-by=.metadata.name`{{execute}}

  Here is the output: 

  ```
   NAME     STATUS   ROLES    AGE   VERSION
   master   Ready    master   80m   v1.14.0
   node01   Ready    <none>   80m   v1.14.0
  ```
