In the previous scenario [intermediate kubectl](https://katacoda.com/mbah-vmw/scenarios/kubectl-intermediate), we introduced you to a few `kubectl` plugins (NS and CTX). Now, we are going to introduce you to `krew`, which is a plugin manager for `kubectl`. We will use `krew` to install various plugins that we will use throughout the scenario. We will be using the following plugins:

- `access-matrix` - shows an RBAC (role based access control) access matrix for server resources
- `NS` - view or change switch namespace contexts
- `CTX` - switch between Kubernetes cluster contexts
- `tail` - stream logs from multiple pods and containers

For the full list of available plugins, please view them [here](https://github.com/kubernetes-sigs/krew-index/blob/master/plugins.md)

Let's install `krew`.  Run the `install-krew.sh`:

`~/krew-install/install-krew.sh`{{execute}}

Don't bother with exporting the PATH and restarting bash, it has already been taken care of for you.
