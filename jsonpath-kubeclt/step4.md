### Json Path Examples:
- Examples using kubectl and JSONPath expressions:

   `kubectl get node -o=jsonpath='{EXPRESSION}'`

- To Retrieve the properties of the first node:

    `kubectl get nodes -o=jsonpath='{.items[0].metadata.name}'`{{execute}}


- To get the name and cpu capacity of all nodes, run the following by click on it:

  `kubectl get nodes -o=jsonpath='{.items[*].metadata.name} {.items[*].status.capacity.cpu}'`{{execute}}
 
- As you noticed the  output of the command does not provide a nice format: 
        `for me to put the output here`
- Hence the need to understand how to use iterations/loops as well as custom culoms in JsonPath.
