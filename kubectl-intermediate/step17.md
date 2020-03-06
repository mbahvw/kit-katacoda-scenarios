To delete a resource, you can simply run the `kubectl delete RESOURCE_TYPE RESOURCE NAME` command. For example, to delete the single pod resource that we deployed in the previous step, type:

`kubectl delete pod nginx`{{execute}}

We can also delete a resource using its yaml manifest file. To illustrate this, let's first create a deployment manifest file to deploy an `nginx` application using the `kubectl` command. Type the command below:

`kubectl create deployment deploy-nginx --image=nginx --dry-run -o yaml >~/deploy-nginx.yaml`{{execute}}

Let's deploy the `nginx` application:

`kubectl create -f ~/deploy-nginx.yaml`{{execute}}

*To deploy a resource or multiple resources from a manifest file or files, use the `kubectl create` command with the `-f` flag and add the path to the file, files, or the directory containing the manifests*.

Let's check if the deployment has been created:

`kubectl get deployment deploy-nginx`{{execute}}

Let's also verify if the pod has been created:

`kubectl get pods`{{execute}}

Now we can delete the above deployment using its manifest file:

`kubectl delete -f ~/deploy-nginx.yaml`{{execute}}

Alternatively, use the delete resource type method as explained earlier:

`kubectl delete deployment deploy-nginx`

Finally, let's verify whether the deployment has been deleted:

`kubectl get pods`{{execute}}

`kubectl get deployment deploy-nginx`{{execute}}
