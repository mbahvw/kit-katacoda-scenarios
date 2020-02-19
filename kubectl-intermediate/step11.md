- If we want to get outputs with nicely formatted column headers, then JSONPath's custom columns is the best way to go.
-  custom-columns with kubectl method is an easier approach than the range/loops method 

- Let assume we want to  get all nodes and nicely format the output with the column header NAME:

    `kubectl get nodes -o=custom-columns=NAME:.metadata.name`{{execute}}

- You can add additional columns to the abouve command by adding JSONPath pairs (COLUMN HEADER:.metadata.name) separated by a comma. In the below command example, we are adding CPU column headed

    `kubectl get nodes -o=custom-columns=NAME:.metadata.name,CPU:.status.capacity.cpu`{{execute}}

- Take a look at the  output:
   
 ```
  NAME        CPU
  master       4
  node01       4
 ```
 
- In step 7, we deployed multiple pods, let's find the pods that are deployed with the image nginx:1.16 and output in tabulated format with column header POD_NAME and IMAGE_VER:

  `kubectl get pods -n frontend -o custom-columns=POD_MAME:.metadata.name,IMAGE_VER:.spec.containers[*].image`{{execute}}