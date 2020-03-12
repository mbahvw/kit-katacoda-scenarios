Now that we have containers deployed in different namespaces, there are a couple of options to view and manipulate these resources: 

1. Add the `--namespace` flag with every `kubectl` command
2. Switch to the appropriate namespace context where the resources live.

The option 2 above allows us to avoid providing the `--namespace` flag with every `kubectl` command when working with resources outside of the `default` namespace.

Let's explore how to switch between namespaces by switching our current context to the `frontend` namespace. Type the command:

`kubectl config set-context --current --namespace=frontend`{{execute}}

We can now list the pods in the `frontend` namespace without adding the `--namespace`  or `-n` flag:

`kubectl get pods`{{execute}}

If you are constantly switching between namespaces and want to avoid using the long `kubectl` command above, then the `kubens` plugin becomes handy. It is bundled with the `kubectx` utility when installed using a package management tool such as yum, apt, dnf, brew, etc.

These two plug-ins can also be installed via `krew`, which is a a package manager tool for `kubectl` plug-ins.
