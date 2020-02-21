We can watch the rolling update status of `nginx-deployment` deployment until completion:

`kubectl rollout status -w deployment/nginx-deployment`{{execute}}

To show the output of the rollout history, type the below command:
  
`kubectl rollout history deployment/nginx-deployment`{{execute}}

Now, let's output the pods' name with the new nginx image version:
  
`kubectl get pods -o custom-columns=Pod_MAME:.metadata.name,IMAGE-VER:.spec.containers[*].image`{{execute}}

Notice here, the nginx's image is now nginx:1.17

To undo the update, type or click on the below command:

`kubectl rollout undo deployment/nginx-deployment`{{execute}}

Type or click on the below command to watch the status again:
   
`kubectl rollout status -w deployment/nginx-deployment`{{execute}}

After the rollout is completed, the image version will be rolled back to nginx:1.16. Let's output the pod's names and their image version to show that:
   
`kubectl get pods -o custom-columns=Pod_MAME:.metadata.name,IMAGE-VER:.spec.containers[*].image`{{execute}}

Finally, to if you want to update your application with a specific version, run the `kubectl rollout history` command to show the different update revision that have been done, pick the revision number you want to update your application to, and run the kubectl command with the `--to-revision=n`flag, where `n=revision number` from the rollout history output. Here is the full command: `kubectl rollout undo --to-revision=n`.