Now let's take a look at the different output formats you can get from `kubectl`. We have been looking at the output in a tabular format. We can look at the information in JSON format.

`kubectl get pod -o json`{{execute}}

With this JSON format, you can perform advanced queries against the information such as the metadata such as `labels`.

Similarly, we can use the YAML output format.

`kubectl get pod -o yaml`{{execute}}


Or if you want to get additional information on the Pods you can use the `wide` output format with this command:

`kubectl get pod -o wide`{{execute}}
