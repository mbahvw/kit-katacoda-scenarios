Here are some more quick tips to help you be more efficient using `kubectl`:

- Get the documentation for Kubernetes resources such as Pods or Services:
`kubectl explain deployment`{{execute}}

This will show you details about a Deployment resource type.

- View all the supported resource types:
`kubectl api-resources`{{execute}}

- View all the resources deployed to the cluster in the Default Namespace:
`kubectl get all`{{execute}}

- View all the resources deployed to the cluster in all of the Namespaces:
`kubectl get all --all-namespaces`{{execute}}
