# Interacting with pods - exec or iexec


Let's fire up a quick nginx container:
`kubectl run test --image=nginx --generator=run-pod/v1 `{{execute}}

Verify whether the  container is up and running:
`kubectl get pods`{{execute}}

Now, let's get the output of the date from the running container without login into the container by:

`kubectl exec test date`{{execute}}
 
 You can also use the `iexec` plugin. Let's get the content of the `/etc/resolv.conf/` file from the running container:

 `kubectl iexec test cat /etc/resolv.conf`{{execute}}

To login and interact with the container's shell, do the following:
`kubectl iexec test  /bin/sh`{{execute}}  



From the shell prompt, type or paste into the shell:
`echo  "Welcome to kubernetes!!">/tmp/welcome.txt`{{copy}}

`cat /tmp/welcome.txt"`{{copy}}

Type `exit` to exit the shell.


Alternatively,  use the `kubectl exec test -it -- /bin/sh`


