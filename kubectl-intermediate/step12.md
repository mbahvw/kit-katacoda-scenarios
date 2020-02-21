If we want to get outputs with nicely formatted column headers, then JSONPath's custom columns is the best way to go.
Custom-columns is easier to use than the range operator.
Here is how to use custom-columns with kubectl:

`kubectl get RESOURCE -o=custom-columns=COLUMN_HEADER:.JSONPATH QUERY`


NOw, let's assume we want to  get all nodes within our cluster and nicely format the output with a column header called NAME. To do that, type or click on we below command:

`kubectl get nodes -o=custom-columns=NAME:.metadata.name`{{execute}}

You can add additional columns to the above command by adding JSONPath pairs (COLUMN HEADER:.metadata.name) separated by a comma. In the below command example, we are adding CPU column headed. Type the command into your terminal or click on to execute it:

`kubectl get nodes -o=custom-columns=NAME:.metadata.name,CPU:.status.capacity.cpu`{{execute}}

The new output looks something similar to the below output:
   
```
NAME        CPU
master       2
node01       4
```
 
In step 9, we deployed multiple pods, let's find all the pods that were deployed with the label `image:nginx:1.16` and output them in a tabulated format with column headers POD_NAME and IMAGE_VER:

`kubectl get pods -n frontend -o custom-columns=POD_MANE:.metadata.name,IMAGE_VER:.spec.containers[*].image`{{execute}}