# Interacting with node 

In this scenatrio, we will create a deployment configuration by adding some tolerations to the pods so that they can be created or migrated into the control/master node.
The reason is that we only have 2 nodes( a control a.k.a master node, and a worker node).  By default, the control node is tainted with `node-role.kubernetes.io/master`,  therefore, any pod that does not have a teloration matching the node taint cannot be deployed into the control node.

Let's now take a look at the deployment manifest file and check the  added tolerations:

`cd ~/deployment && cat nginx-deployment.yaml | grep  -A5 tolerations`{{execute}}

We can now deploy the manifest using either teh apply or create command:

`kubectl create -f nginx-deployment.yaml`{{execute}}

Verify that the pods have been created:

`kubectl get pods`{{execute}}

Let's verify also that some of the pods are created in the control node:
`kubectl get pods -o wide`{{execute}}

As you may notice, some of the pods are deployed in the control/master node.





