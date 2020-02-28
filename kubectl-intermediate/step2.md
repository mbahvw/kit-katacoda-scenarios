Let's create a new `kubectl` context using the existing `kubernetes-admin` user:

`kubectl config set-context dev-context --cluster kubernetes --user=kubernetes-admin`{{execute}}

To verify whether the context has been created, run the below command:

`kubectl config get-contexts`{{execute}}

You should see the `dev-context` context listed.
