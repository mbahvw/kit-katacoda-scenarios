Patching can be used to partially update any kubernetes resources such as nodes, pods, deployments, etc. In this step, we are going to deploy an `nginx` pod with a label of `env: prod` using the `kubectl` command. We will then update the label.

Let's create a pod with a label `env=prod` in the default namespace:

`kubectl run nginx --generator=run-pod/v1 --image=nginx --labels=env=prod`{{execute}}

We can verify whether the application has been deployed with the label:

`kubectl get pod nginx --show-labels`{{execute}}

Now, let's update the label to `env=dev` using the patch command:

`kubectl patch pod nginx -p '{"metadata":{"labels":{"env":"dev"}}}'`{{execute}}

Let's verify with the `--show-labels` flag:

`kubectl get pod nginx --show-labels`{{execute}}

Alternatively you can use the `kubectl edit pod nginx` command and manually edit the .metadata.label.env key's value, and save your changes.
