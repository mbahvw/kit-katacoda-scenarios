We can watch the status of the `nginx-deployment` deployment's `rollingUpdate` changes until completion. Type the below command:

`kubectl rollout status -w deployment/nginx-deployment`{{execute}}

To show the output of the rollout history, type the below command:

`kubectl rollout history deployment/nginx-deployment`{{execute}}

Now let's check our pods to ensure the `nginx` image version has been properly updated using custom-columns:

`kubectl get pods -o custom-columns=Pod_MAME:.metadata.name,IMAGE-VER:.spec.containers[*].image`{{execute}}

Notice here, the `nginx` pod's images are now set to `nginx:1.17`.

To undo the update, type the below command:

`kubectl rollout undo deployment/nginx-deployment`{{execute}}

Type the below command to watch the status again:

`kubectl rollout status -w deployment/nginx-deployment`{{execute}}

After the rollout has completed, the image version will be rolled back to `nginx:1.16`. Let's output the pod's names along with their image versions to validate our changes:

`kubectl get pods -o custom-columns=Pod_MAME:.metadata.name,IMAGE-VER:.spec.containers[*].image`{{execute}}

Finally, if you want to update your application with a prior rollout revision, run the `kubectl rollout history` command to show the different configuration revisions. Pick the previous revision number you want to change your application to and run the `kubectl` command with the `--to-revision=n`flag, where `n=revision number` from the rollout history output. Here is the full command you would use: `kubectl rollout undo --to-revision=n`.

Let's change the image version back to `nginx:1.17` once more using this method. Type the below command:

`kubectl rollout undo deployment/nginx-deployment --to-revision=2`{{execute}}


**NOTE:** *Using the imperative `kubectl rollout undo` command is not best practice. The best practice is to manually edit the deployment manifest file and update the appropriate field (in this case here, spec.template.spec.containers[].image), save it, and run the `kubectl apply -f DEPPLYOMET.YAML` command. This way, the deployment manifest file remains the source of truth.*