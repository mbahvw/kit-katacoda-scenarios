Using  exec to interact with pods

let's quickly explore some of these plugins
We can begin by listing who the current user is:

`kubectl whoami`{{execute}}

Let's also look at the `who-can` plugin, which is equivalent to the `kubectl auth can-i VERB [TYPE/NAME]`:

`kubectl who-can create nodes`{{execute}}

`kubectl who-can '*' pods`{{execute}}


We just created additional namespaces and contaienr pods, let's list the namespaces:

`kubectl ns`{{execute}}

Let's switch to one of the namespace and run the `pod-dive` plugin command on one of the pods:
`kubectl ns developers`{{execute}}

`POD=$(kubectl get pods -o=jsonpath='{ .items[0].metadata.name}')`{{execute}}

`kubectl pod-dive $POD`{{execute}}`

LEt's also explore the `access-matrix`, which becomes handy when looking for RBAC Access 
`kubectl access-matrix`{{execute}}


Finally, let's explore the plugin context:
`kubectl ctx`{{execute}}

This topic was mentioned in the intermediate scenario as kubectx, which is just an alias to kubectl ctx command.

The non-plugin alternative is to use `kubeclt get contexts` to get the user who is mapped to the context.