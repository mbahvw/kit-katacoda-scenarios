# Switch between contexts

Lets output again the context:
`kubectl config get-contexts`{{execute}}

Now, let's switch to the dev-context
`kubectl config use-context dev-context@development`{{execute}}


Let's switch back to the kubenetes-admin@kubernetes context
`kubectl config use-context`{{execute}}

As you can see, switching back and forth between can be combersome specially when you are dealing with multiples clusters, and the same goes for namespaces.
Let's visit namespaces in the next step.