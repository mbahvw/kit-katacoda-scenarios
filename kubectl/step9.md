If you want to get more detailed information about the Deployment, run this command:

`kubectl describe deployment`{{execute}}

This shows key information about the Deployment such as:
- Labels
- Number of Replicas
- Annotations
- Deployment Strategy Type
- Events

**Pro Tip**:
To get detailed information for a particular deployment in a particular namespace:
`kubectl describe deploy nginx-deployment -n default`{{execute}}
