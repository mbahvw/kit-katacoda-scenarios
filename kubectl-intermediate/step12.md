# Scale resources
In this scenario, we are going to create a deployment configuration with an nginx:1.16 image and scale the deployment to 5 replicas

- Let's deploy and nginx application using the kubectl command line method or the imperative method

  `kubectl create deployment nginx-deployment --image=nginx:1.16`{{execute}}

- We can verify whether the resources have  been created:
  -  Verifying deployment:
     ` kubectl get deploy/nginx-deployment`{{execute}} 
      you can also use the longer version of the command:
      `kubectl get deployment nginx-deployment`{{execute}}

  - Verifying POD:
    `kubeclt get pods`{{execute}}

- Now let's scale the deployment to 5 replicas:
  
  `kubectl scale deploy/nginx-deploy --replicas=5`{{execute}}

  -  Verify whether deployment has been scaled: 
     `kubectl get pods`{{execute}} 
     
      you are  add `-w` to watch  the scaling live.

- Let 's scale it back to 1 replica and move on to the next step:
  `kubectl scale deploy/nginx-deploy --replicas=1`{{execute}}