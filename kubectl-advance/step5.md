To dump logs from a specified pod or container into the standard output, use the `kubectl logs POD_NAME`

Let's switch to the kube-system namespace and access some logs: 

`kubectl ns kube-system`{{execute}}  

Let's get all the pods: 
 
`kubectl get pods`{{execute}}

Use the `pod-logs` plugin to get the weave pods logs:

`kubectl pod-logs`{{execute}}  

Then, select from the list: 
- The weave-net-xxxx pod  
- Then select the weave-npc container  
- Review the logs  

Alternatively, we can use the `kubectl logs POD_NAME -c CONTAINER_NAME` command as shown below: I

`kubectl logs  weave-net-POD_NAME -c weave-npc`


Switch back to the default namespace before moving on to the next step:  
`kubectl ns default`{{execute}}


**Note:** 
*If the specific pod only has one container, then there is no need to to add the `-c CONTAINER_NAME` option.*
*The `pod-logs` plug-in does not allow output redirection. Therefore, if you want to redirect the output use `kubectl logs` as such:*  
`kubectl logs  weave-net-POD  -c weave-npc >~/weave.logs`  