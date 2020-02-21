In the previous step,  we wanted to get an output that is formated as the one below:
  
```
master   2
node01   4
```

To achieve this, we would use the range jsonpath operator to iterate through each item (nodes in this case) and use some tabulation `\t` as well as a new line `\n` characters  to get the above output.

To do this in JSONPATH, we would use the `range` and `end`  operators as fallow:

```
{range  .items[*]}
    { .metadata.name} {"\t"}
    {.status.capacity.cpu} {"\n"}
{end}
```

Let's finally merge the above command into one line and passit to the kubectl jsonpath option parameter. Below, is the result of the command and let's run it and inspect the output:

`kubectl get nodes -o=jsonpath='{range  .items[*]}{ .metadata.name} {"\t"}{.status.capacity.cpu} {"\n"}{end}'`{{execute}}