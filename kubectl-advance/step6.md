Let's create a single container pod called `test`  with an `nginx` image:  

`kubectl run test --image=nginx --restart=Never`{{execute}}  

Verify whether the `test` container is up and running: 

`kubectl get pods`{{execute}}  

Now let's get the output of the `date` command from the running `test` container without logging into it:

`kubectl exec test date`{{execute}}  

Using the `iexec` plug-in, let's get the content of the `/etc/resolv.conf/` file from the running `test` container:  

`kubectl iexec test cat /etc/resolv.conf`{{execute}}  

To login and interact with the container's shell, type the below command:  

`kubectl iexec test`{{execute}} 

From the shell prompt, type the below command or copy/paste it into the shell:  

`echo  "Welcome to kubernetes!!">/tmp/welcome.txt`{{copy}}  

Check the contents of the file: 

`cat /tmp/welcome.txt`{{copy}}  

Type `exit` to exit the interactive shell.

Alternatively,  you can use the below command:

`kubectl exec test -it -- /bin/sh`{{execute}}
