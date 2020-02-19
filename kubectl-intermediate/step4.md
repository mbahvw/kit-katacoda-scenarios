Let's now install kubectx. List the content of the home and run the kubectx.sh script

`ls -la && ./kubectx.sh`{{execute}}

When the installion is done, run the kubectx to list all the contexts

`kubectx`{{execute}}

Notice that the current context is highlighted in yellow

To switch between contexts, use `kubectx CONTEXT NAME`

- Let's switch to the dev-context:

   `kubectx dev-context@development`{{execute}}

- Switch back to the kubernetes context
  
   `kubectx kubernetes-admin@kubernetes`{{execute}}

This saves a lot of time from typing the long `kubectl config  use-context CONTEXTNAME` command.


