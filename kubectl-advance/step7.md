The `cp` command can be used to copy files and directories to and from containers within a pod.  

Using the test `nginx` container pod we created in the previous step, let's copy the content of the `krew-install` directory to the test container's `/tmp` directory:

`kubectl cp ~/krew-install test:/tmp`{{execute}}  

**Note:** *If the pod has mutiple containers, then  you need to add `-c CONTAINER_NAME` option. If the pod is in a different namespace, you can prefix the namespace name before the pod, as shown here: `kubectl cp namespace/pod-name:/dir`.*  

Let's verify whether the directory has been copied. Enter the container's shell within the pod:  

`kubectl iexec test`{{execute}}  

List the content of the /tmp directory to verify if the directory has been copied:  

`ls /tmp/krew-install`{{copy}}  

Type `exit` to exit the shell.  

Now, let's copy the welcome.txt file from the test container to the master server's /tmp directory: 

`kubectl cp test:/tmp/welcome.txt  /tmp`{{execute}}  

Verify if the file has been copied from the container within the `test` pod:  

`cat /tmp/welcome.txt`{{execute}}

## Clean up:

Please delete the pod before moving on to the next step: 

`kubectl delete pod test`{{execute}}
