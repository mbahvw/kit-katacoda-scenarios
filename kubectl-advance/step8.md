
# Compares the current state of the cluster against the state that the cluster would be in if the manifest was applied.
kubectl diff -f 

#edit/cp/replace

the command allows to dirtectly edit any deployed resources via the command line.

Let create an nginx deployment:
`kubectl create deployment redis-deployment --image=redis:4.0 