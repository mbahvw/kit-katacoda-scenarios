# JSONPath and custom culumns

- If you want to get outputs with nicely formatted column headers, then JSONPath custon columns is the way to go.
-  custom-columns with kubectl is an easier approach than the range/loops method
-  Here is how custom columns works with kubectl:
       `kubectl get nodes -o=custom-columns=<COLUMN NAME>:<JSON PATH`
          
- You can run the below command to get all nodes and nicely format the output with the column header as NAME:
  
       `kubectl get nodes -o=custom-columns=NAME:.metadata.name`{{execute}} 

- Here is the output of the above command:
    ```   
          NAME   
          master  
          node01   
    ```

- You can add additional columns to the abouve command by adding JSONPath pairs (COLUMN HEADER:.metadata.name) separated by a comma. In the below command example, we are adding CPU column headed
     
`kubectl get nodes -o=custom-columns=NAME:.metadata.name,CPU:.status.capacity.cpu`{{execute}}

  -  Take a look at the  output:

        ```
        NAME        CPU
        master       4
        node01       4       
        ```
