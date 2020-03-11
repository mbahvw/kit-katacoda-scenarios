Patching can be used to partially update any kubernetes resources such as nodes, pods, deployments, etc. In this step, we are going to deploy an `nginx` pod with a label of `env: prod` using the `kubectl` command. We will then update the label.

Let's create a pod with a label `env=prod` in the default namespace:

`kubectl run nginx  --image=nginx --restart=Never --labels=env=prod`{{execute}}

We can verify whether the application has been deployed with the label:

`kubectl get pod nginx --show-labels`{{execute}}

Now, let's update the label to `env=dev` using the patch command:

`kubectl patch pod nginx -p '{"metadata":{"labels":{"env":"dev"}}}'`{{execute}}

Let's verify with the `--show-labels` flag:

`kubectl get pod nginx --show-labels`{{execute}}

We can also use the `kubectl label` command to add a label, update an existing label, or delete a label. Type the below command to update the label `env:dev` to `env:prod`:

`kubectl label pod nginx env=prod --overwrite`{{execute}}

*Note: the `--overwrite` flag is used when the label already exists.*

Verify whether the label has been updated:

`kubectl get pod nginx --show-labels`{{execute}}

To delete the label, append the `-` to `env` , which is the value of the label's key.  Type the below command:

`kubectl label pod nginx env-`{{execute}}

Verify whether the label has been deleted:

`kubectl get pod nginx --show-labels`{{execute}}

Alternatively, use the `kubectl edit pod nginx` command and manually edit the .metadata.label.env and save your changes.
