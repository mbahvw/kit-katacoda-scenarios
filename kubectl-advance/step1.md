In the previous scenario [intermediate kubectl](https://katacoda.com/mbah-vmw/scenarios/kubectl-intermediate), we introduced you to a few kubectl plugins (NS and CTX). Now, we are going to introduce you to `krew`, which is a plugin manager for kubectl. We will use `krew` to install various plugins that we will use throughout the scenario. We will be using the following plugins:

- access-matrix - shows an RBAC access matrics for server resources
- NS - view or change the current namespaces
- CTX - switch between contexts
- tail - stream logs from multiple pods and containers

For the full list of plugins, please see them here (link to https://github.com/kubernetes-sigs/krew-index/blob/master/plugins.md )

Let's install `krew`.  Navigate to the ~/krew-install directory and run the `install-krew.sh`:

`cd ~/krew-install && ./install-krew.sh`{{execute}}

Don't bother with exporting the PATH and restarting bash, it' s been taken care of. 