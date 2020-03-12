A taint consist of a key, value, and effect. As an argument, it is expressed as key=value:effect.

The effect should be one these values: `NoShedule, PreferNoSchedule, or NoExecute`

Currently a taint can only be applied to a node, and when a node is tainted, no pods can be scheduled in it unless a PodSpec toleration matching the taint is added in the pod manifest file.

Here is how it is used with the  `kubectl` command:

`kubectl taint NODE NAME KEY_1=VAL_1:TAINT_EFFECT`


Let's taint `node01`  as dedicated to the devops-group only:

`kubectl taint node node01 dedicated=devops-group:NoSchedule`{{execute}}

Verify that node01 is tainted:

`kubectl describe node node01 | grep -i taints`{{execute}}

You can also check the taints on all nodes:

`kubectl get nodes -o custom-columns=NAME:.metadata.name,TAINTS:.spec.taints[*].key`{{execute}}

Let's now try to deploy a single pod:

`kubectl run my-app --image=nginx --restart=Never`{{execute}}

The newly deployed pod will be in a pending state, because it will not tolerate the taints applied to both nodes. Therefore, it will not be scheduled.

Let's show the pod:

`kubectl get pod my-app`{{execute}}

As you can see, the pod is in a pending state. The reason for that is the scheduler couldn't place it into any of the nodes, due to the taints applied to them. To see the error, type the below command and check under the events section:

`kubectl describe pod my-app`{{execute}}

Alternatively, you can run the below command:

`kubectl get events`{{execute}} 

There are 2 ways to solve this issue. We can add a toleration matching the taint that was applied to the nodes, or remove the taint from the nodes. For now, let's remove the taint on node01:

`kubectl taint node node01 dedicated-`{{execute}}

*Note: to remove a taint, append the `-` to the value of the key.*

Once the taint is removed, the scheduler will place the pending pod into the untainted node in our case `node01`. Let's verify by running the below command:

`kubectl get pod -o wide`{{execute}}
