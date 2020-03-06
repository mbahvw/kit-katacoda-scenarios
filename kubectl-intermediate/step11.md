In the previous step,  we wanted to get an output that is formatted as the output shown below:

```
master   2
node01   4
```

To achieve this, we would use the range JSONPath operator to iterate through each item (nodes in this case) and use tabulation `\t` as well as new line `\n` characters to achieve the desired output.

To do this in JSONPath, we would use the `range` and `end`  operators as shown below:

```
{range  .items[*]}
    { .metadata.name}{"\t"}
    {.status.capacity.cpu}{"\n"}
{end}
```

Let's now merge the above command into one line and pass it to the `kubectl` `-o=jsonpath` option. Below, is the result of the command. Go ahead and type the below command and inspect its output:

`kubectl get nodes -o=jsonpath='{range  .items[*]}{.metadata.name}{"\t"}{.status.capacity.cpu}{"\n"}{end}'`{{execute}}
