In this step, we are going to update the nginx image from nginx:1.16 to nginx:1.17
Before we proceed with the update, let's use  the same application we deployed in the previous step and scale it to 5 replicas again.

So, let's scale the application up to 5 replicas:

`kubectl scale deployment/nginx-deployment --replicas=5`{{execute}}

We can verify whether the application has been scaled:
  
`kubectl get pods`{{execute}} 

`kubectl get deployment/nginx-deployment`{{execute}} 
   
Check the Ready column in the deployment output, it should display 5/5 when the scaling is completed.

Let's get all the pods name along with their current nginx image version using custom-clolumns:

`kubectl get pods -o custom-columns=Pod_MAME:.metadata.name,IMAGE-VER:.spec.containers[*].image`{{execute}}

Now, let's proceed with the update. We will add the `--record` flag to capture and record the history of our rollout
  
`kubectl set image deployment/nginx-deployment nginx=nginx:1.17 --record`{{execute}}
   
Alternatively, you can achieve the same update result by editing the deployment manifest/config either manually or using the `kubeclt edit deployment DEPLOYMENT NAME` and navigate to .spec.template.spec.container[].image, change the image version and save.

Click on the Continue button to move on to the next step with the update.
