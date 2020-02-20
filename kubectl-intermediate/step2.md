Let's  create a new context using the existing kubernetes-admin user and the kubernetes cluster.

`kubectl config set-context dev-context --cluster kubernetes --user=kubernetes-admin`{{execute}}

Let's verify whether the context has been created
`kubectl  config get-contexts`{{execute}}

You should see the `dev-context` contexts.



