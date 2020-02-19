# Patch resource
# Delete resources 

Patching can be to partially update any k8s resource(nodes,pods, deployments,etc).  In this scenario, we are going to create an nginx container application using the kubectl and  with some label, then update the label.

- Let's create a pod in the default namespace and add the label env=prod.
  `kubectl run nginx --generator=run-pod/v1 --image=nginx --labels=env=prod`{{execute}}

- We can verify whether the application has been deployed with the label
  `kubectl get pod nginx --show-labels`{{execute}}

- Now, let's update the label to env=dev using the patch command

  `kubectl patch pod nginx -p '{"metadata":{"labels":{"env":"dev"}}}'`{{execute}}

  - let's verify with the `--show-labels` flag
    `kubectl get pod nginx --show-labels`{{execute}}

- Alternatively, you can use the `kubectl edit` command to manually edit  the resource. 