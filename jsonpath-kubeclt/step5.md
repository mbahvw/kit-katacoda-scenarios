### How to use Loop/Range in JSONPath with Kubeclt
If you want to get an output that is filtered and formated as the below table:
 
```
  master   2      
  node01   4     
```
    
You are going to need to use ranges in JSONPath. To print the format above, you would use a statement like this: 

```
   FOR EACH NODE 
          PRINT NODE NAME \t PRINT CPU COUNT \n
  END FOR
```

To do this in JSONPATH, you need to use the `range` and `end` as fallow: 
```
    '{range  .items[*]} 
        { .metadata.name} {"\t"}
        {.status.capacity.cpu} {"\n"}
     {end} 
```

The command above can be merged into one line and passed as parameter to the kubectl command. You run the command below to see the output:

   `kubectl get nodes -o=jsonpath='{range  .items[*]}{ .metadata.name} {"\t"}{.status.capacity.cpu} {"\n"}{end}'`{{execute}}


