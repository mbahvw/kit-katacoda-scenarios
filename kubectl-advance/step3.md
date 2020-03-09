# Installing plugins using krew

Let's go ahead and install some of these plugins:

```bash
cat > ~/plugins <<EOF
access-matrix
ca-cert
ctx
get-all
iexec
images
ns
pod-dive
pod-logs
whoami
who-can
EOF
```{{execute}}


Type the below command to install it:

`for plugin in $(cat ~/plugins); do echo -en $(kubectl krew install $plugin);done`{{execute}}  


Verify and list the installed plugins:  
`kubectl krew list`{{execute}}  


You can also list the installed plugins by:  
`kubectl plugin list`{{execute}}  
