Let's display the contexts again:

`kubectl config get-contexts`{{execute}}

Notice that the current active context is: `kubernetes-admin@kubernetes`

To switch to the `dev-context` context, type the below command:

`kubectl config use-context dev-context`{{execute}}

If we display the contexts now, the new active context will be set to  `dev-context` context. Type the below command to show the context:

`kubectl config get-contexts`{{execute}}


Let's switch back to the kubenetes-admin@kubernetes context:

`kubectl config use-context kubernetes-admin@kubernetes`{{execute}}

As you can see, switching back and forth between contexts with the above kubectl command can be very tedious specially when dealing with multiples contexts.

The alternative would be to install kubectx. Let's do that in the next step