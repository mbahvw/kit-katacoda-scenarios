### JsonPath and custom culumns
- You can use JSONPATH to print customized columns with kubectl. This is an easier approach  than the use of the ranges/loop method
- Custom colomns command option:
    -  Here is how custom columns works with kubectl:
       `kubectl get nodes -o=custom-columns=<COLUMN NAME>:<JSON PATH`
          
    - You can run the below command to get all nodes and nicely format the output with a column header Named NODE:
  
       `kubectl get nodes -o=custom-columns=NODE:.metadata.name`{{execute}} 

    - Here is the output of the above command:
        
         | NODE     |
         |--------- |
         | node01   |
         | node01   |
      

     - You can add additional columns to the abouve command by adding JSONPath pairs (COLUMN HEADER:.metadata.name) separated by a comma:
     
       `kubectl get nodes -o=custom-columns=NODE:.metadata.name,CPU:.status.capacity.cpu`{{execute}}

  -  Take a look at the  output:

     | NODE     |  CPU
     |--------- |--------- |
     | node01   |  4       |
     | node01   |  4       |


