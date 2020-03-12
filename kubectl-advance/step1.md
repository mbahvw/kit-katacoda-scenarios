In the [kubectl intermediate](https://katacoda.com/mbah-vmw/scenarios/kubectl-intermediate) scenario lab, we introduced you to a few `kubectl` plugins (NS and CTX). Now, we are going to introduce you to `krew`, which is a plugin manager for `kubectl`. We will use `krew` to install various plugins that we will use throughout the scenario. We will be using the following plugins:

- `access-matrix` - shows an RBAC (role based access control) access matrix for server resources
- `ns`  - view or change switch namespace contexts
- `ctx` - switch between Kubernetes cluster contexts


For the full list of available plugins, please view them [here](https://github.com/kubernetes-sigs/krew-index/blob/master/plugins.md)

Let's install `krew` by running the `install-krew.sh` script:

`~/krew-install/install-krew.sh`{{execute}}

The installation may take some time, so be patient with it. And when the installation is done, there is no need for you to export the PATH and restart bash.
