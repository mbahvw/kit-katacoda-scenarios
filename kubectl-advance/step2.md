There are currently 80+ plugins that can be installed using the`kubectl krew install` command. Please note, these plugins are not audited for security by the Krew maintainers, therefore running them is at your own risk.

Let's discover some of these plugins:

`kubectl krew search`{{execute}}

As you can see, there are over 80 plugins available. The usage of these plugins is  personal and you may never  use them all. You can learn, install and use these plugins as you see fit or necessary depending on your situation.  

Here are some plugins that are usually very handy as an administrator:  

| Krew Plug-in | Description |
| --- | --- |
| `access-matrix` | Show an RBAC access matrix for server resources |
| `ca-cert` | Pretty print the current cluster certificate. |
| `ctx` | Switch between Kubernetes cluster contexts |
| `iexec` | Interactive selection tool for kubectl exec |
| `images` | Show container images used in the cluster |
| `ns` | Switch between Kubernetes namespaces |
| `pod-logs` | Display a list of pods to get logs from |
| `whoami` | Shows the subject that's currently authenticated |
| `who-can` | Shows which subjects have RBAC permissions |


As you can see, there are many plugins that can make your experience as a Kubernetes administrator easier, so explore them.
