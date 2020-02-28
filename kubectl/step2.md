Let’s setup the terminal to help you ease through the command line
Setup up kubectl completion.

`kubectl completion -h`{{execute}} This shows us the help options.

This terminal setup is bash shell so we will use the following command:
`source <(kubectl completion bash)`{{execute}}

Now we can do things like `kubectl get pods` and it will be Namespace aware. We will play with this later on in the scenario.