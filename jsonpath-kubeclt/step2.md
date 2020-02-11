# Why JSONPath in kubernetes

-  Filter Through 1000s of Kubernetes resources and provide desired formatted output
-  For instance if you want to get all your kubernetes nodes with their CPU capacity in a nice format like the one below:
    
    ```
     NAME          CPU        
     master         4          
     node01         4          
    
    ```
-  You would not able to find a kublectl command to provide a similar output. Howerver, you can use the kubectl command with JSONPATH to generate the above output.
