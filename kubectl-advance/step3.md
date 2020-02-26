Install some plugins

```
cat > plugins <<EOF
ctx
ns
access-matrix
iexec
images
pod-logs
whoami
who-can
tail
ca-cert
EOF
```{{execute}}

run to install:
`for plugin in $(cat plugins); do echo -en $(kubectl krew install $plugin);done`{{execute}}

Verify what `krew` installed plugins:

`kubectl plugin list`{{execute}}

You can also list the list by:
`kubectl plugin list`{{execute}}
