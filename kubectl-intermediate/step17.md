To delete a resource, you can simply run the `kubectl delete RESOURCE_TYPE RESOURCE NAME` command. For example, to delete the single pod resource that we deployed in the previous step, type:

`kubectl delete pod nginx`{{execute}}

We can also delete a resource using its yaml manifest file. To illustrate this, let's first create a deployment manifest file to deploy an nginx application using the kubectl command. Type or click on the command below:

`kubectl create deployment nginx-deployment --image=nginx --dry-run -o yaml >~/nginx-deploy.yaml`{{execute}}

Let's deploy the nginx application:

`kubectl apply -f ~/nginx-deploy.yaml`{{execute}}

*To deploy a resource or multiples resources from a manifest file or files, use the `kubeclt apply` command with `-f` flag and add the path to the file, files, or the file directory*.

Let's check whether the deployment has been created:

`kubectl get deployment nginx-deployment`{{execute}} 

Let's also verify whether the container pod has been created:
`kubectl get pods`{{execute}}

Now. we can delete the above deployment using its manifest file:

`kubectl delete -f ~/nginx-deploy.yaml`{{execute}}

Alternatively, use the delete resource type method as explain ealier:

`kubectl delete deployment nginx-deployment`

Finally, let's verify whether the deployment has been deleted: 

`kubectl get pods`{{execute}}

`kubectl get deployment nginx-deployment`{{execute}}

