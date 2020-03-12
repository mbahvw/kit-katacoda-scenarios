**Pre-requisite:**
Familiarity with json and jsonpath is crucial as well as familiriaty with outputing kubernetes resources into json/yaml `kubectl get RESOURCE -o json|yaml`.

The `-o=jsonpath` flag with the kubectl command allows you to filter resources and display them in the way you desire.
Let's say we want to find the names of all the kubernetes nodes along with their CPU resources. The simple way to achieve this is to follow the 4 steps below:

  - Identify the `kubectl` command required to provide the information required.

      `kubectl get nodes`{{execute}}

  - Output the command in json:

      `kubectl get nodes -o json`{{execute}}

  - Create or form the jsonpath query. In our case, the query would be the following:

     `'{.items[*].metadata.name}{.items[*].status.capacity.cpu}'`

  - Pass the query to the jsonpath option of the `kubectl` command. Type the below command:

     `kubectl get nodes -o=jsonpath='{.items[*].metadata.name} {.items[*].status.capacity.cpu}'`{{execute}}

As you may notice, the output does not look pretty. What if we add a `\n` (newline character) between the two JSONPath pairs as:

  `kubectl get nodes -o=jsonpath='{.items[*].metadata.name}{"\n"}{.items[*].status.capacity.cpu}{"\n"}'`{{execute}}

The new output looks a little better, however if we want our output to look similar to this:

```
master   2
node01   4
```

We will then need to use JSONPath ranges/loops. Let's see how ranges work in the next step.

**NOTE:** *Your environment may have a different CPU number for master and node01.*