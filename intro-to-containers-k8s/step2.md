In the Dockerfile, we can see what's known as a "[multi-stage build][0]", where
we are using one image to build our application (with any dependencies), and
another image we would use for deployment that would not include any build
artifacts, all with one Dockerfile.

You can also see that the resulting Docker image exposes port 80 to listen for
requests.

`cat Dockerfile`{{execute}}

[0]: https://docs.docker.com/develop/develop-images/multistage-build/