# Interacting with Nodes - `tolerations`

In this scenario we will create a deployment configuration by adding some tolerations to the pods so they can be created or migrated onto the master node.  

We currently have only two nodes (a control node, AKA master node, and a worker node). By default, the control node is tainted with `node-role.kubernetes.io/master`. Therefore, any pod that does not have a tolerance matching the node's taint cannot be deployed onto the control node.  

Let's now take a look at the deployment manifest file and check the added tolerations:  
`cd ~/deployment && cat nginx-deployment.yaml | grep -A5 tolerations`{{execute}}  

We can now deploy the manifest using either the `apply` or `create` command:  
`kubectl create -f nginx-deployment.yaml`{{execute}}  

Verify that the pods have been created:  
`kubectl get pods`{{execute}}  

Let's also verify that some of the pods are created on the control node:
`kubectl get pods -o wide`{{execute}}  

As you may notice, some of the pods have been deployed on the control/master node.  
