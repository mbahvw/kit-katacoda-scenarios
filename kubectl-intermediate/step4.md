We have placed a script in the home user directory to install `kubectx`. Type the below command to install it:

`~/kubectx.sh`{{execute}}

When the installion is done, type the `kubectx` command to list all the contexts:

`kubectx`{{execute}}

Notice that the current active context `kubernetes-admin@kubernetes` is highlighted in yellow

To switch between contexts, you can now type `kubectx CONTEXT NAME`.

Let's switch to the `dev-context` by typing the below command:

`kubectx dev-context`{{execute}}

Go ahead and switch back to the `kubernetes-admin@kubernetes` context:

`kubectx kubernetes-admin@kubernetes`{{execute}}

This saves a lot of time from typing the long `kubectl config  use-context CONTEXTNAME` command.
