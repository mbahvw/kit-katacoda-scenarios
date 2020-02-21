There are many ways to delete kubernetes resources using the  `kubectl delete` command. Let's look at few:

To delete a resource, you simply run the `kubectl delete RESOURCE_TYPE RESOURCE NAME` command. For example, to delete the single pod resource  we deploy in the previous step, we do:

`kubectl delete pod nginx`{{execute}}

We can also delete a resource using its manifest file. To illustrate this, let's first create a deployment manifest/resource file to deploy an nginx application using the kubectl command:

`kubectl create deployment nginx-deployment --image=nginx --dry-run -o yaml >~/nginx-deploy.yaml`{{execute}}

Let's deploy the application:

`kubectl apply -f ~/nginx-deploy.yaml`{{execute}}

*To deploy a resource from a manifest file, use the `kubeclt apply` command with `-f` flag adding the path to the file, or files, or directory*.

Let's check whether the deployment has been created:

`kubectl get deployment nginx-deployment`{{execute}} 

Let's also verify whether the container pod has been created:
`kubectl get pods`{{execute}}

Now. let's delete the above deployment using the manifest/resource file:

`kubectl delete -f ~/nginx-deploy.yaml`{{execute}}

Alternatively, use the delete resource type method as explain ealier:

`kubectl delete deployment nginx-deployment`