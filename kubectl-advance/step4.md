Let's explore some of these plugins. We can begin by listing who the current authenticated user is:

`kubectl whoami`{{execute}}

Let's also look at the `who-can` plugin, which is equivalent to the `kubectl auth can-i VERB [TYPE/NAME]`:  

`kubectl who-can create nodes`{{execute}} 
 
`kubectl who-can '*' pods`{{execute}}  

We just created additional namespaces and pods, let's list the namespaces: 

`kubectl ns`{{execute}}  

Let's switch to one of the namespaces and run the `pod-dive` plugin command to get one of the pods:

`kubectl ns developers`{{execute}}  

We can first list all the pods in that namespace: 

`kubectl get pods`{{execute}}  

Let's get the name of the first pod, assign it to a variable and run the `pod-dive` plugin:

`POD=$(kubectl get pods -o=jsonpath='{.items[0].metadata.name}') && echo $POD`{{execute}} 

`kubectl pod-dive $POD`{{execute}}`  

The above output shows a nice pod resource tree (node, namespace, type of resource, etc.).  

We can also display all the images in all namespaces:  

`kubectl images -A`{{execute}}  

Let's also explore the `access-matrix` plug-in, which is handy when looking for a RBAC Access matrix for Kubernetes resources:

`kubectl access-matrix`{{execute}}  

Finally, let's revisit the context plugin:  

`kubectl ctx`{{execute}}  

In the intermediate scenario, we used the `kubectx` plugin, which is just an alias to the `kubectl ctx` command.  

The non-plugin alternative is to run this command to switch between context:

`kubectl config use-context CONTEXT_NAME` 
