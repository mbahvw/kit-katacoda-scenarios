Let's fire up an `nginx` container:  

`kubectl run test --image=nginx --restart=Never`{{execute}}  

Verify whether the  container is up and running:  
`kubectl get pods`{{execute}}  

Now let's get the output of the `date` command from the running `test` container without logging into it:  
`kubectl exec test date`{{execute}}  


You can also use the `iexec` plug-in. Let's get the content of the `/etc/resolv.conf/` file from the running container:  

`kubectl iexec test cat /etc/resolv.conf`{{execute}}  

To login and interact with the container's shell, type the below command:  

`kubectl iexec test  /bin/sh`{{execute}}  


From the shell prompt, type the below command or copy/paste it into the shell:  

`echo  "Welcome to kubernetes!!">/tmp/welcome.txt`{{copy}}  

Check the contents of the file: 

`cat /tmp/welcome.txt`{{copy}}  

Type `exit` to exit the interactive shell.

*Alternatively,  use the `kubectl exec test -it -- /bin/sh`{{execute}}*
