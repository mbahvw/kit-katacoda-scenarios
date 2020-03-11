Draining a node means removing all running pods from the node, typically performed for maintenance activities.

Open a second terminal (click the `+` button at the top of the terminal and select 'Open New Terminal') and run the below command to watch the output in **Terminal 2**: 

`watch -d kubectl get pods -o wide`{{execute}}  

Pay attention to the `NODE` column, which will show how the pods are migrating from `node01` to the `master` node.  

Go back to **Terminal 1** by clicking the 'Terminal' tab at the top of the screen. Run the below command to drain `node01`:

`kubectl drain node01 --ignore-daemonsets`{{execute}}  

In **Terminal 1**, you will observe the pods are being evicted, and in **Terminal 2**, you will observe, how the pods in node01 are being terminated and re-deployed on the `master` node.

All your pods are now running on the master node at this point. You can now perform whatever maintenance is required on `node01` and when done, you can `uncordon` it to make it schedulable once again.

Please keep **Terminal 2** open. Now, let's `uncordon` node01.  

In **Terminal 1**, ensure that `node01` is still at `Ready,SchedulingDisabled` mode:

`kubectl get nodes`{{execute}}  

Now, let's `uncordon` node01:

`kubectl uncordon node01`{{execute}}

Verify `node01` is now in `Ready` status:

`kubectl get nodes`{{execute}}

In **Terminal 2**, you will  notice that the pods have not been moved back to `node01`. These Pods will not be rescheduled automatically to the new nodes.

To get some pods running on `node01`, let's try to scale up the deployment to 8 replicas.  

In **Terminal 1**:

`kubectl scale deployment/nginx-deployment --replicas=8`{{execute}}  

In **Terminal 2**, you will notice, some of the pods are now running on `node01`.

**Note:** *The `--ignore-daemonsets` flag in the `kubectl drain` command is required because DaemonSet pods are required to run on each node when deployed.  This allows pods that are not part of a DaemonSet to be re-deployed on another available node*
