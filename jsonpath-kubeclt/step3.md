# View and Interpret Kubeclt output in Json Format

## How to use JSONPATH in Kubectl

- Let's say you want to find the names of all your k8s nodes along with their CPU resources. In order to do, let's fallow the 4 steps below:

1. Identify the kubeclt required to provide the info needed, in this case:
    `kubectl get nodes`{{execute}}`

2. Output the command in json:
      `kubectl get nodes -o json`{{execute}}

3. Create or form the jsonpath query. In out case, it would be:
    `'{.items[*].metadata.name}{.item[*].status.capacity.cpu}'`

4. Pass the query to the jsonpath option of kubeclt command:
      `kubectl get nodes -o=jsonpath='{.items[*].metadata.name}{.item[*].status.capacity.cpu}'`{{execute}}

- As you may notice, the ouptut does not look pretty. What if we add `\n`newline return between the two JSONPath pairs as:

  `kubectl get nodes -o=jsonpath='{.items[*].metadata.name}{"\n"}{.item[*].status.capacity.cpu}'`{{execute}}

- The new output looks better, however if what id we want our output to look like this below:

  ```
    master   2      
    node01   4     
  ```

To do this, we will need to use jsonpath loops or range.