There are two methods to create a namespace. The first and easier method is to use the `kubectl` command. This method is also known as the imperative method. The second method is to use a yaml namespace manifest file, which is also known as the declarative method. Let's explore both of these methods.

For the imperative method, let's create a new namespace called `frontend` via the `kubectl` command. Type the below command to create the namespace:

`kubectl create namespace frontend`{{execute}}

You can replace the `namespace` option in the command with the `ns` option, which is an abreviated alias of `namespace`.

For the declarative method, we have two options to create the manifest file:

The first option is to use your favorite text editor and manually create a yaml manifest file with the namespace specs.

The second option is to generate the manifest file via the `kubectl` command. Let's create another namespace and call it `backend` with this option. Type the below command and redirect the output to a file:

`kubectl create namespace backend -o yaml --dry-run >~/ns-backend.yaml`{{execute}}

*The `--dry-run` flag allows you to preview the object without creating it, and makes no changes to the cluster.  It's a great way to validate without making changes*

Let's verify whether the manifest file has been created:

`cat ~/ns-backend.yaml`{{execute}}

Next, Use the `kubectl apply -f` command with the file we generated in the previous step to create the namespace resource as follows:

`kubectl apply -f ~/ns-backend.yaml`{{execute}}

Let's display all namespaces and validate that the frontend and backend namespaces have been created:
`kubectl get ns`{{execute}}
