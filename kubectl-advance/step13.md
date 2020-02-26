# Interacting with Node - Part I

In this section, we will create a Deployment configuration by adding some toleration to the Pods so that they can be created or migrated into the control/master Node.

The reason is that we only have 2 Nodes (a control a.k.a master node, and a worker node).  By default, the control node is tainted with `node-role.kubernetes.io/master`,  therefore, any Pod that does not have a toleration matching the node taint cannot be deployed into the control node.

Let's now take a look at the Deployment manifest file and check the added tolerations:

`cd ~/deployment && cat nginx-deployment.yaml | grep  -A5 tolerations`{{execute}}

We can now deploy the manifest using either the apply or create command:

`kubectl create -f nginx-deployment.yaml`{{execute}}

Verify that the Pods have been created:

`kubectl get pods`{{execute}}

Let's verify also that some of the pods are created in the control node:
`kubectl get pods -o wide`{{execute}}

As you may notice, some of the pods are deployed in the control/master node.

You can also use the `pod-dive` plugin to shows the Pod's workload tree and its info inside a Node. Let's show how that works:

- Let's install the `pod-dive` plugin:
  
  `kubectl krew install pod-dive`{{execute}}

- Let's try to get the pods that are deployed in the master node and assign them to a variable:

  `POD_MASTER=$(kubectl get pods -o=jsonpath='{.items[?(@.spec.nodeName == "master")].metadata.name}')`{{execute}}

- Now, let's run the `pod-dive` plugin:

  `kubectl pod-dive $POD_MASTER`{{execute}}

  *The output shows a nice summary of tre pod's workload tree*

Before we drain the node, we need first to cordon it, which means we need to ensure that no pod can be scheduled into the node. Let's go ahead and cordon `node01`:

`kubectl cordon node01`{{execute}}

If you list the nodes now, you will find the status of  `node01`  set to `Ready,SchedulingDisabled`:
`kubectl get nodes`{{execute}}

Please click on the Continue to move to Draining node-Part II

1. cat the deploymeny config file, and to 
2. create a deployment with 4 replicas  and add toleration.. got the script working.
3.  show that the 
