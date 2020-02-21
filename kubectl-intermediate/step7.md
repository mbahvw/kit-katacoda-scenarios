
Now that we have containers deployed in different namespaces, to access these containers,  we have to either add `--namespace` flag or `-n`  for short with the `kubeclt get pods` command, or switch to the namespace where the containers live and the above command without the `--namespace` flag.

Let's  explore how to switch between namespaces, by switching to the `frontend` namespace:

`kubectl config set-context --current --namespace=frontend`{{execute}}

We can list the pods in that namespace without the `--namespace` flag:

`kubectl get pods`{{execute}}


So, if you are constantly switching between namespaces and want to avoid using the long kubectl command above, then the `kubens` utility  becomes handy. It is bundled with the `kubectx` command utility when installed using a package management tool (yum, apt, dnf, brew,etc.).