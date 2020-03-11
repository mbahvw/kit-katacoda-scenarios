Now that we have Hugo web application running how do we access it? In
Kubernetes, this is done through a service. We have a service already defined
in a yaml file here we can browse.

It is important to note here that we are creating a NodePort service and using a
selector to target our deployment. Additionally, this service will expose our
application on port 32321 externally, but expect our containers to again be
listening on port 80.

`cat service.yaml`{{execute}}