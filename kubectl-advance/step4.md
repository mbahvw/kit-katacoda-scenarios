Using  exec to interact with pods

let exploring some of these plugins

- kubectl whoami
- kubectl access-matrix
- kubectl who-can get pods/kubectl who-can '*' pods
- kubectl ns kube-system
  - kubectl get pods and kubectl pod-logs ( weave pods logs using both methods)
    -  kubectl pod-dive kubectl pod-dive weave-net-74w99
    -  kubectl pod-logs
        - select the pods  11) for pod, 2) container weave-npc
        -  check out the output
    -  `kubectl logs  weave-net-74w99  -c weave-npc` I really prefer this method because you export the logs