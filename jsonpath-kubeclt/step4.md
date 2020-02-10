### Json Path Examples:
- Examples using kubectl and JSONPath expressions:

   `kubectl get node -o=jsonpath='{EXPRESSION}'`

- To Retrieve the properties of the first node:

    `kubectl get nodes -o=jsonpath='{.items[0].metadata.name}'`{{execute}}


- To get the name and cpu capacity of all nodes, run the following by click on it:

  `kubectl get nodes -o=jsonpath='{.items[*].metadata.name} {.items[*].status.capacity.cpu}'`{{execute}}
 
- As you noticed the  output of the command does not provide a nice format: 
   
   ```
   master $ kubectl get nodes -o=jsonpath='{.items[*].metadata.name} {.items[*].status.capacity.cpu}'
   master node01 2 4master $
   ```

- Therefore, if you want to get nice output fomat, you would use either  JSONPath range and custom-columns with kubectl
- We are going to cover those topics in the next steps