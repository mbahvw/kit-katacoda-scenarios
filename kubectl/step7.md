Create a deployment from this Kubernetes manifest. First, let's review the deployment manifest:

`cat nginx-deployment.yaml`{{execute}}

Create the Deployment in Kubernetes with the following command:

`kubectl apply -f nginx-deployment.yaml`{{execute}}

This manifest deploys Nginx. The Pods in the Deployment will get deployed to the default Namespace, because a `namespace` was not specified in the manifest and the `-n <namespace>` option was not specified. We will look at the Pods created by the deployment in the next steps.
