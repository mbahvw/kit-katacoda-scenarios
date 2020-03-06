Let's display the contexts again by typing the below command:

`kubectl config get-contexts`{{execute}}

Notice that the current active context is set to `kubernetes-admin@kubernetes`

To switch to the `dev-context` context, type the below command:

`kubectl config use-context dev-context`{{execute}}

If we display the contexts now, the new active context will be set to the `dev-context` context. Type the below command to show the context:

`kubectl config get-contexts`{{execute}}


Let's switch back to the `kubernetes-admin@kubernetes` context by typing the below command:

`kubectl config use-context kubernetes-admin@kubernetes`{{execute}}

As you can see, switching back and forth between contexts with the above `kubectl` command can be very tedious especially when dealing with multiple contexts.

The alternative would be to install `kubectx`. Let's do that in the next step.
