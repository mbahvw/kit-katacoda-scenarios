In order to make the docker image available to other hosts we need to store the
image in a docker registry. There are several free and paid options for
registries. In this case, we will just run a local registry.

Let's create a local docker registry by executing the following command.

`docker run -d -p 5000:5000 --restart=always --name registry registry:2`{{execute}}