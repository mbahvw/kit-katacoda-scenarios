# Interacting with node - Drain 

To proceed with the Drain, let's run the below command and watch the output:

Open a second Terminal  and run the below command to watch the output. Pay attention the NODE Columns, which will show how the pod are migrating from `node01` to the `master` node:

`watch -d kubectl get pod -o wide`{{execute}}
  

Then, go back to Terminal 1 and run this command from Terminal 1:
  
`kubectl drain node01 --ignore-daemonsets`{{execute}}

In Terminal 1, you will see the pods are being evicted, and in Terminal 2, you will see, how the pods are being terminated and re-created in the `master` node.

All your pods are now running in the master node at this point. You can whatever maintenance is required on `node01` and when done, you can `uncordon` it to make it schedulable.

Please keep Terminal 2 open. Now, let' s try by running the below command:

First: ensure that `node01` is still at `unschedulingDisabled` mode by:

`kubectl get nodes`{{execute}}

Now, let's uncordon it:

`kubectl uncordon node01`{{execute}}

Verify the node is now at `Ready` mode:
`kubectl get nodes`{{execute}}

If you still have Terminal 2 open, you will  notice that the pods have not been moved  back to node01. These PODs will not be rescheduled automatically to the new nodes.

To have some pods running in `node01`, let's try to scale the deployment to 8. Please keep T2 open so can watch the output":
`kubectl scale deployment/nginx-deployment --replicas=8`{{execute}}

If Terminal 2 is still open, you will notice, some of the pods are now in `node01`:

You can also  below command in Terminal 1 to verify that some of the new pods are in `node01`:
`kubectl get pods -o wide`{{execute}}

