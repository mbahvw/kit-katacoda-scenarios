Let's show the contexts again:

`kubectl config get-contexts`{{execute}}

Notice that the current context is the `kubernetes-admin@kubernetes`

Now, let's switch to the `dev-context` context
`kubectl config use-context dev-context`{{execute}}

The output will show the current context as `dev-context`

`kubectl config get-contexts`{{execute}}

Let's switch back to the kubenetes-admin@kubernetes context
`kubectl config use-context kubernetes-admin@kubernetes`{{execute}}

As you can see, switching back and forth between contexts with the above kubectl command can be very combersome specially when dealing with multiples contexts.

The alternative would be to install kubectx. Let's do that in the next step