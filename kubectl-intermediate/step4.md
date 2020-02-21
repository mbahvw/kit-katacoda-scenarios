We have placed a script in the home user directory to install `kubectx`,let's run it: 

`ls -la && ./kubectx.sh`{{execute}}

When the installion is done, type the kubectx command to list all the contexts:

`kubectx`{{execute}}

Notice that the current active context `kubernetes-admin@kubernetes` is highlighted in yellow

To switch between contexts, type  `kubectx CONTEXT NAME`

Let's switch to the dev-context by typing the below command:

`kubectx dev-context`{{execute}}

Let's switch back to the kubernetes context:
  
`kubectx kubernetes-admin@kubernetes`{{execute}}

This saves a lot of time from typing the long `kubectl config  use-context CONTEXTNAME` command.


