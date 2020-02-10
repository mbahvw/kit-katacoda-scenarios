### Why Json Path in kubernetes
- When working with production kubernetes clusters, you may deal with , 100s of nodes, 1000s objects,etc, and may be asked to query these objects and output them in human readable format. Kubectl  command tool is designed to do that, however the current built in tool  may not always give you the  output and format you desire, hence the need for jsonpath.
