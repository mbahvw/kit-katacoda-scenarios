
Now that we have containers deployed in different namespaces, to access these containers,  we have to either add the `--namespace` flag with the `kubectl get pods` command, or switch to the namespace where the containers live and type the above command without the `--namespace` flag.

Let's  explore how to switch between namespaces by switching to the `frontend` namespace and using the below command. Type or click on the command:

`kubectl config set-context --current --namespace=frontend`{{execute}}

We can now list the pods without adding the `--namespace` flag:

`kubectl get pods`{{execute}}


So, if you are constantly switching between namespaces and want to avoid using the long kubectl command above, then the `kubens` plugin becomes handy. It is bundled with the `kubectx` command plugin utility when installed using a package management tool such as yum, apt, dnf, brew, etc.

