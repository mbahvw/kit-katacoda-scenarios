There are many way to delete a resource using the  `kubectl delete` command. Let's look at few:

1. Let's delete the pod that we deploy in the previous step:
   `kubectl delete pod nginx`{{execute}}

2. Let's create a deployment using a manifest/resource file or the declarative method:
   `kubectl create deployment nginx-deployment --image=nginx --dry-run -o yaml >~/nginx-deploy.yaml`{{execute}}
   
   - Now, let create the deployment:
      `kubectl create -f ~/nginx-deploy.yaml`{{execute}}
    
   - Let's verify whether the depployment
      `kubectl get deployment nginx-deployment`{{execute}} 
    
    - Let's see if the pod is created:
      `kubectl get pods`{{execute}}

3. There are two methods to delete the above deployment
   -  Using the manifest/resource file:

      `kubectl delete -f ~/nginx-deploy.yaml`{{execute}}

   - Using the delete resource type method:

     `kubectl delete deployment nginx-deployment`


