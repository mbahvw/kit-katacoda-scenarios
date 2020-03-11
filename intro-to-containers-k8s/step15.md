To verify the service was created, let's use kubectl to display current services

`kubectl get service`{{execute}}

Validate our Hugo application works by selecting "KubeSite" on the right.

You can then delete the deployment and service with kubectl:

`kubectl delete -f deployment.yaml`{{execute}}

`kubectl delete -f service.yaml`{{execute}}

Try to confirm both were deleted using kubectl commands.