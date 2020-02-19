# How to use Loop/Range in JSONPath with Kubeclt

In the previous step,  we wanted to get an output that is filtered and formated as the below table:

```
  master   2
  node01   4
```

to achieve this, we would use the range jsonpath operator to iterate through each item (node in this case) and use some tabulation `\t` as well as a new line `\n` carriage retun to get the above ouptput.

To do this in JSONPATH, we would use the `range` and `end` as fallow:

```
   {range  .items[*]}
        { .metadata.name} {"\t"}
        {.status.capacity.cpu} {"\n"}
   {end}

```

Let's finally merge the above command  into one line and passed with the kubectl jsonpath option parameter.  You run the command below to see the output:
   `kubectl get nodes -o=jsonpath='{range  .items[*]}{ .metadata.name} {"\t"}{.status.capacity.cpu} {"\n"}{end}'`{{execute}}