Create a deployment from this Kubernetes manifest. Review the manifest here

`cat nginx-deployment.yaml`{{execute}}

Create the Deployment with the following command:

`kubectl apply -f nginx-deployment.yaml`{{execute}}

This manifest deploys Nginx. The Pods in the Deployment will get deployed to default Namespace. We will look at the Pods in the next steps.