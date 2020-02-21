We can watch rolling update status of `nginx-deployment` deployment until completion:

`kubectl rollout status -w deployment/nginx-deployment`{{execute}}

To show the output of the rollout history, run the below command:
  
`kubectl rollout history deployment/nginx-deployment`{{execute}}

Now let's output the pods name with their new nginx image version:
  
`kubectl get pods -o custom-columns=Pod_MAME:.metadata.name,IMAGE-VER:.spec.containers[*].image`{{execute}}

Notice here, the nginx image is nginx:1.17 now

To undo the update, run:

`kubectl rollout undo deployment/nginx-deployment`{{execute}}

Watch the status again:
   
`kubectl rollout status -w deployment/nginx-deployment`{{execute}}

After the rollout is completed, the image version will be rolled back to nginx:1.16. Let's output the pod names and image version:
   
`kubectl get pods -o custom-columns=Pod_MAME:.metadata.name,IMAGE-VER:.spec.containers[*].image`{{execute}}

To update with a specific version, run the `kubectl rollout history` command to show the different update revision made, then pick the revision number you want to update your application to. Run the kubec   tl command with the `--to-revision=n`flag, where `n=revision number` from the rollout history output. Here is the output of that kubectl command: `kubectl rollout undo --to-revision=n`.