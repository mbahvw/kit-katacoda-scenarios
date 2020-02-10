### View and Interpret Kubeclt output in Json Format
- You can output kubectl in JSON as follow:

    `kubectl get nodes -o json`{{execute}}`

- If you pipe the above command to less and check the first few lines, you will  see  all the node objects/properties (execpt the apiVersion) belong to JSON dictionary list called items

  `kubectl get nodes -o json | less`{{execute}}

- Scroll up to the begining of the file
