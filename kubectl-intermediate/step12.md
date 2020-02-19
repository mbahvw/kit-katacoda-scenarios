In this scenario, we are going to create a deployment configuration with an nginx:1.16 image and scale the deployment to 5 replicas

- Let's deploy an nginx application in the default namespace using the kubectl command line method or the imperative method

  `kubectl create deployment nginx-deployment --image=nginx:1.16`{{execute}}

- We can verify whether the resources have  been created:
  -  Verifying deployment:
  
     ` kubectl get deploy/nginx-deployment`{{execute}} 

  - Verifying POD:
    `kubectl get pods`{{execute}}

- Now let's scale the deployment to 5 replicas:
  
  `kubectl scale deploy/nginx-deployment --replicas=5`{{execute}}

  -  Verify whether deployment has been scaled: 
     `kubectl get pods`{{execute}} 
     
      you are  add `-w` to watch  the scaling live.
      Clear  your screen
- Let 's scale it back to 1 replica and move on to the next step:
  `kubectl scale deploy/nginx-deployment --replicas=1`{{execute}}