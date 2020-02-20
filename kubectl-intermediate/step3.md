Let's show the contexts again:

`kubectl config get-contexts`{{execute}}

Notice that the current context is the `kubernetes-admin@kubernetes`

Now, let's switch to the `dev-context@development` context
`kubectl config use-context dev-context@development`{{execute}}

The output will show the current context as `dev-context@development`

`kubectl config get-contexts`{{execute}}

Let's switch back to the kubenetes-admin@kubernetes context
`kubectl config use-context kubernetes-admin@kubernetes`{{execute}}

As you can see, switching back and forth between clusters with the above kubectl command can be very combersome specially when you are dealing with multiples clusters.

The alternative would be to install kubectx. Let's do that in the next step