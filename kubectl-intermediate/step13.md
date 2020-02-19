- We can watch rolling update status of `nginx-deployment` deployment until completion:
     `kubectl rollout status -w deployment/nginx-deployment`{{execute}}

   - We can also get the rollout history:
     `kubectl rollout history deployment/nginx-deployment`{{execute}}

- Now let's get again all the pods name along with their new nginx image version:
   `kubectl get pods -o custom-columns=Pod_MAME:.metadata.name,IMAGE-VER:.spec.containers[*].image`{{execute}}

-  To undo the update, run:
   `kubectl rollout undo deployment/nginx-deployment`{{execute}}

-  Watch the stat again:
   
   `kubectl rollout status -w deployment/nginx-deployment`{{execute}}

-   Let's get all the pods name along with their  nginx image version again:
   
   `kubectl get pods -o custom-columns=Pod_MAME:.metadata.name,IMAGE-VER:.spec.containers[*].image`{{execute}}

- To undo the update with a specific verion, pass the `--to-revision=` flag with the `kubectl rollout undo command` at the end.