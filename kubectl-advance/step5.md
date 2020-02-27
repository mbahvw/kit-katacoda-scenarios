# Using logs/tail to interact and debug pods issue. 


To dump pod logs into the standard output, use the `kubectl logs POD_NAME`

Let's switch to teh kube-system namespace and access some logs:

`kubectl ns kube-system`{{execute}}

Let's output the pods:
`kubectl get pods`{[execute]} 

Use the `pod-logs` plugin to get the weave pods logs:
`kubectl pod-logs`{{execute}} 

Then, select from the list:
- The weave-net-xxxx pod: 19
- Then the weave-npc container: 2 
- Check out the logs standard output

Alternatively, we can use the regular `kubectl logs POD_NAME -c CONTAINER` command:

`kubectl logs  weave-net  -c weave-npc`

*Note: the `pod-logs`  does allow output redirection, therefore if you want to redirect the output use `kubectl logs`

`kubectl logs  weave-net-POD  -c weave-npc >~/weave.logs`