In this step, we have already created a deployment manifest file and added some tolerations to the pods so they can be created or migrated onto the master node.  

There are only two nodes (a control node, AKA master node, and a worker node) in this cluster. By default, the control node is tainted with `node-role.kubernetes.io/master`. Therefore, any pod that does not have a toleration matching the node's taint cannot be deployed onto the control node.  

Let's now take a look at the deployment manifest file and check the added tolerations: 

`cd ~/deployment && cat nginx-deployment.yaml | grep -A5 tolerations`{{execute}}  

We can deploy the manifest using either the `apply` or `create` command:

`kubectl create -f nginx-deployment.yaml`{{execute}}  

Verify that the pods have been created: 

`kubectl get pods`{{execute}}  

Let's also verify that some of the pods are created on the control node:

`kubectl get pods -o wide`{{execute}}  

As you may notice, some of the pods have been deployed on the control/master node.  
