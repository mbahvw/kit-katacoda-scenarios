Using logs/tail to interact and debug pods issue. 

continuation step 4.. break step 4 into 2 steps

- kubectl ns kube-system
  - kubectl get pods and kubectl pod-logs ( weave pods logs using both methods)
    -  kubectl pod-dive kubectl pod-dive weave-net-74w99
    -  kubectl pod-logs
        - select the pods  11) for pod, 2) container weave-npc
        -  check out the output
    -  `kubectl logs  weave-net-74w99  -c weave-npc` I really prefer this method because you export the logs