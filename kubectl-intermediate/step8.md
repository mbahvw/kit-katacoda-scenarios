 - Pre-requisite: familiarity with json and josnpath is crucial as well as famility with outputing k8s resource into json/yaml `kubectl get resouce -o json/yaml`.

- The `-o jsonpath` flag with the kubectl command allows you to filter resources and display them in the way you desire.
- Let's say you want to find the names of all your k8s nodes along with their CPU resources. In order to do, let's fallow the 4 steps below:
  
  - Identify the kubeclt required to provide the info needed, in this case:

      `kubectl get nodes`{{execute}}`

  - Output the command in json:

      `kubectl get nodes -o json`{{execute}}

  - Create or form the jsonpath query. In out case, it would be:

     `'{.items[*].metadata.name}{.item[*].status.capacity.cpu}'`
    
  - Pass the query to the jsonpath option of kubeclt command:

     `kubectl get nodes -o=jsonpath='{.items[*].metadata.name} {.items[*].status.capacity.cpu}'`{{execute}}

As you may notice, the ouptut does not look pretty. What if we add `\n`newline return between the two JSONPath pairs as:

  `kubectl get nodes -o=jsonpath='{.items[*].metadata.name}{"\n"}{.items[*].status.capacity.cpu}'`{{execute}}

The new output looks a little better, however if we want our output to look like this below:

  ```
    master   2
    node01   4
  ```
  We will then need to use jsonpath  range/loop.