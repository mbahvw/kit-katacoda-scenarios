There are a couple methods to create a namespace. The first and easier method is to use the kubectl commmand. This method is also known as the imperative method. The second method is to use a yaml manifest file, which is also known as the declarative method. Let's explore both of these 2 methods.

For the imperative method, let's create a new namespace called `frontend` via the `kubecctl` command. Type or click on the below click to create it:

`kubectl create namespace frontend`{{execute}}

You can replace the  `namespace`option in the command with the  `ns` option, which is its short name.

For the declarative method, we have two options to create the manifest file:

The first option is to use your favorite text editor and manually create a yaml manifest with the namespace specs.

The second option is to generate the manifest via the kubectl command. Let's create another new namespace named `backend` with this option. Type the below command and redirect to a file

`kubectl create namespace backend -o yaml --dry-run >~/ns-backend.yaml`{{execute}}

*The `--dry-run` flag allows you preview the object without creating it.*

Let's verify whether the manifest file has been created:

`cat ~/ns-backend.yaml`{{execute}}

Next, Use the `kubectl apply -f` command with the file to create the namespace object or resource as follow:

`kubectl apply -f ~/ns-backend.yaml`{{execute}}

Let's display all namespaces and see if the  frontend and backend namespaces have been created:
`kubectl get ns`{{execute}}

