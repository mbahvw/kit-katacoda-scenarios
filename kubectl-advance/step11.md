# Interacting with node - uncordon 

Now, let's uncordon the node:

`kubectl uncordon node01`{{execute}}

Verify the node is now at `Ready` mode:
`kubectl get nodes`{{execute}}

If you still have Terminal 2 open, you will  notice that the pods have **NOT** been moved back to node01. These PODs will not be rescheduled automatically to node01.

To schedule pods in `node01`again, let's scale the deployment to 8. Please keep T2 open so you can watch the output":

`kubectl scale deployment/nginx-deployment --replicas=8`{{execute}}

If Terminal 2 is still open, you will notice some of the pods are now in `node01`:

You can also use below command in Terminal 1 to verify that some of the new pods are in `node01`:

`kubectl get pods -o wide`{{execute}}

*Alternatively, you can install the `node-restart` plugin and use that to automatically cordon, drain, and uncordon the node.*

#### Clean up:

Please go ahead and delete the deployment:

`kubectl delete deployment/nginx-deployment`{{execute}}

Verify whether the pods and deployment have been deleted:

`kubectl get pods`{{execute}}

`kubectl get deployment/nginx-deployment`{{execute}}

