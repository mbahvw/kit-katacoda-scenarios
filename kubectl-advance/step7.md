# Interacting with pods - exec or iexec

### Using  exec to interact with pods

Let' deploy a quick busybox container and execute 
`kubectl run busybox --image=buysbox --generator=run-pod/v1 --command -- sleep 2700`{{execute}}

We can get the output of the date from the running busybox container without login into the container by:
`kubectl exec pod/busyboxcmd date`{{execute}}
 
 or use the `iexec` plugin:
 `kubectl iexec busybox cat /etc/resolv.conf`{{execute}}

To login and interact with the container, do the following:
`kubectl iexec busybox /bin/sh`{{execute}}  

From the shell prompt, type:
`echo -en "Hello busybox">busybox.txt; cat busybox.txt"'{{execute}}

Type `exit` to exit the container shell.

or use the `kubectl exec -it busybox /bin/sh`


