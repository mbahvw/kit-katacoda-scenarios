In the previous scenario [intermediate kubectl](site), we introduced you to a few kubectl plugins (NS and CTX). Now, we are going to introduce you to krew, which  a package manager for kubectl plugins. ~~we introduce you to the kubectl package manager for kubectl plugins~~. We will use Krew to install various plugins that we will use throughout the scenario. We will be using the following plugins:

- access-matrix - shows an RBAC access matrics for server resources
- NS - view or change the current namespaces
- CTX - switch between contexts
- tail - stream logs from multiple pods and containers

For the full list of plugins, please see them here (link to https://github.com/kubernetes-sigs/krew-index/blob/master/plugins.md )

Let's install Krew. Navigate to ~/krew-install directory and install it:
`cd ~/krew-install && ./install-krew.sh`{{execute}}

