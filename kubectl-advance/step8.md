A taint consist of a key, value, and effect. As an argument, it is expressed as key=value:effect.

The effect should be one these values: `NoShedule, PreferNoSchedule, or NoExecute`

Currently a taint can only be applied to a node, and when a node is tainted, pod cannot be scheduled in it unless a PodSpec toleration matching the taint is added in the pod. 

Here is how it is used with the  `kubectl` command:

`kubectl taint NODE NAME KEY_1=VAL_1:TAINT_EFFECT`


Let's taint `node01`  as dedicated to the devops group only:

`kubectl taint node node01 dedicated=devops-group:NoSchedule`{{execute}}

Verify whether the taint has been applied:
`kubectl get nodes -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints[*].key`{{execute}}

Let's try to deploy a single pod:

`kubectl run my-app --image=nginx --restart=Never`{{execute}}

If you display the pod, you will see that it is in a pending state:

`kubectl get pods`{{execute}}

Since both nodes in this cluster have taints, the pod failed to be scheduled. To see error, type the below  command and check the events section:

`kubectl describe pod my-app`{{execute}}

Alternatively, you can run the below command:

`kubectl get events`{{execute}} 

There are 2 ways to solve this issue. We can add toleration matching the taint that was applied to the nodes, or remove the taint from the nodes. For now, let's remove the taint on node01:

`kubectl taint node node01 dedicated-`{{execute}}

*Note: to remove a taint, append the `-` to the value of the key.*

Once the taint is remove, the scheduler will place the pending pod onto the untainted node in this case node01. Let's verify that:

`kubectl get pod -o wide`{{execute}}
