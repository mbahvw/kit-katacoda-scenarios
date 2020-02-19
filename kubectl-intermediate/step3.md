Lets output again the context:

`kubectl config get-contexts`{{execute}}

Now, let's switch to the dev-context
`kubectl config use-context dev-context@development`{{execute}}


Let's switch back to the kubenetes-admin@kubernetes context
`kubectl config use-context kubernetes-admin@kubernetes`{{execute}}

As you can see, switching back and forth between clusters with the above kubectl command can be very combersome specially when you are dealing with multiples clusters.

The alternative would be to install kubectx. Let's do that in the next step