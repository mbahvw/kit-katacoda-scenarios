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
tail
EOF
```{{execute}}


Click on or type the following command to install:
`for plugin in $(cat ~/plugins); do echo -en $(kubectl krew install $plugin);done`{{execute}}  


Verify and list the installed plugins:  
`kubectl krew list`{{execute}}  


You can also list the installed plugins by:  
`kubectl plugin list`{{execute}}  
