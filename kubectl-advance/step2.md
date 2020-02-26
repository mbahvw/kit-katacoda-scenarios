 # Kubectl and krew usage

 There are currently 80+ plugins that can be installed using the`kubectl krew install` command. Please note, these plugins are not audited for security by the Krew maintainers, therefore running them is at your own risk.


let's discover some plugins:

`kubectl krew search`{{execute}}

clear the screen script

As you can see, there are over 80 plugins available. The usage of these plugins is  personal and you may never  use them all. You can learn, install and use these plugins as you see fit or necessary depending on your situation.

Here are some plugins that are usually veryt handy as an administrator:

- `ctx (switch between context)`
- `ns (switch between namespace)`
- `access-matrix ( show an RBAC access matrix for server resources)`
- `iexec (Interactive selection tool for kubectl exec)`
- `images (Show container images used in the cluster)` 
- `pod-logs (Display a list of pods to get logs from) `
-  `whoami and who-can`
-  `tail (slogs from multiple pods and containers)`
-  `ca-cert ( to Print the PEM CA cert of the current cluster)`


As you can see in that, there are many plugins that could make your life as administrator simpler and easier. So, explore them 