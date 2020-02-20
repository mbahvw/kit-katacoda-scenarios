We just created a new cluster  named  `development`  and a new  context named `dev-context`. Let's check the cluster config and see if the cluster has been added:

`kubectl config get-clusters`{{execute}}


Let's verify whether the context has been created
`kubectl  config get-contexts`{{execute}}

You should see the `dev-context` contexts.



