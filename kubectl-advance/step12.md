Interacting with node - Taint

A taint consist of a key, value, and effect. These 2 values are expressed as key=value:effect when used with `kubectl taint` command.

The effect should one these values: `NoShedule, PreferNoSchedule, or NoExecute`

Currently a taint can only be applied to a node, and when a node is tainted, pod cannot be scheduled in it unless a PodSpec toleration matching the taint is added in the pod.

Let's taint `node01`  as dedicated to devops users only:

`kubectl taint node node01 available:devops-users:Noschedule`{{execute}}

Let's verify whether the taint has been applied:

