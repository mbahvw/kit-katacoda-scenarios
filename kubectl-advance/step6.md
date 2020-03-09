# Interacting with pods - `exec or iexec`

Let's fire up an `nginx` pod:  
`kubectl run test --image=nginx --generator=run-pod/v1 `{{execute}}  

Verify whether the  container is up and running:  
`kubectl get pods`{{execute}}  

Now let's get the output of the `date` command from the running `nginx` pod without logging into the container:  
`kubectl exec test date`{{execute}}  


 You can also use the `iexec` plug-in. Let's get the content of the `/etc/resolv.conf/` file from the running container:  
 `kubectl iexec test cat /etc/resolv.conf`{{execute}}  


To login and interact with the container's shell, do the following:  
`kubectl iexec test  /bin/sh`{{execute}}  


From the shell prompt, type or paste into the shell:  
`echo  "Welcome to kubernetes!!">/tmp/welcome.txt`{{copy}}  

Check the contents of the file:  
`cat /tmp/welcome.txt`{{copy}}  

Type `exit` to exit the interactive shell.


*Alternatively,  use the `kubectl exec test -it -- /bin/sh`{{execute}}*
