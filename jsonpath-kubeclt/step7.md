### Sort
    Sorting can come in very handy:
      `kubectl get nodes --sort-by=.metadata.name`{{execute}}
      
  ```
       NAME   STATUS  ROLES  AGE  VERSION
       master Ready   master 5m   v1.11.3
       node01 Ready   <none> 5m   v1.11.3
    ```
