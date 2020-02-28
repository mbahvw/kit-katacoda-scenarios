# intercting with POD - the cp command

You can use the `cp` command to copy files and directories to and from containers.
Using the test container ( deployed in the default namespace) we created in the previous step, let's copy the content of  krew-install directory to the test container's `tmp` directory:

`kubectl cp ~/krew-install  test:/tmp`{{execute}}

*Note: if the pod has mutiple containers, then  you need to add `-c specific-container` flag. Also, if the pod live in different namespace, add the namespace name before the pod, as shown here `kubectl cp namespace/pod-name:/dir`.*

Let's verify whether the directory has been copied:

Exec into the container:

`kubectl iexec test`{{execute}}

Cd into the /tmp directory and verify whether the directory has been copied.

Type `exit` to exit the shell.


Now, let's copy from the test container to  the local /tmp directory:

`kubectl cp test:/tmp/welcome.txt  /tmp`{{execute}}

List the /tmp directory and verify whether the file has been copied.
