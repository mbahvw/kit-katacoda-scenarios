In this step, we are going to update the `nginx` image from `nginx:1.16` to `nginx:1.17` with no downtime. We created a deployment in the previous step, which provides a mechanism by default (`rollingUpdate`) to achieve this.

Before we proceed with the update, let's use the same application we deployed in the previous step and scale it to five replicas again:

`kubectl scale deployment/nginx-deployment --replicas=5`{{execute}}

We can verify whether the application has been scaled:

`kubectl get pods`{{execute}}

`kubectl get deployment/nginx-deployment`{{execute}}

Check the `Ready` column in the deployment output. It will display `5/5` when the scaling has completed.

Let's filter all the pod names along with their current `nginx` image version using custom-columns:

`kubectl get pods -o custom-columns=Pod_NAME:.metadata.name,IMAGE_VER:.spec.containers[*].image`{{execute}}

Now, let's proceed with the update. We will add the `--record` flag to capture and record the history of the rollout: Type the below command:

`kubectl set image deployment/nginx-deployment nginx=nginx:1.17 --record`{{execute}}

Alternatively, the result above can be  achieved by editing the deployment manifest either manually or using the `kubectl edit deployment DEPLOYMENT NAME`.  The deployment will be opened in the default text editor (typically `vim`). Edit the  .spec.template.spec.containers[].image key's value by changing the image to `nginx:1.17` and saving the changes.  As long as the manifest validates properly, the deployment will be updated in the cluster.


**NOTE:** *Scaling a deployment using the imperative `kubectl scale` command is not best practice. The best practice is to manually edit the deployment manifest file and update the spec.replicas field, save it, and run the `kubectl apply -f DEPPLYOMET.YAML` command. This way, the deployment manifest file is always the source of truth.*