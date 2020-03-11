Next, we will deploy our container to Kubernetes!

First let's make sure we are in the directory with your yaml files that describe
how to manipulate Kubernetes.

`cd ~/kubernetes-yaml`{{execute}}

First, let's take a look at `deployment.yaml`. This yaml configuration is called
a Deployment. The most important elements to note are that we are requesting 2
copies (replicas) of our Hugo-based web application. Also, near the bottom we
are defining the image (our `hugo-site:v1`) we want to use and pulling it from our
local image registry.

Notice also we specify a container port where we expect our container to listen
for requests.

`cat deployment.yaml`{{execute}}