Let's create a new `kubectl` context using the existing `kubernetes-admin` user. Type the below command:

`kubectl config set-context dev-context --cluster kubernetes --user=kubernetes-admin`{{execute}}

To verify whether the context has been created, type the below command:

`kubectl config get-contexts`{{execute}}

You should see the `dev-context` context listed.
