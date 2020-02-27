#!/bin/bash

#Install the metrics server
cd ~/

git clone https://github.com/kubernetes-sigs/metrics-server.git

cd ~/metrcis-server

kubectl create -f deploy/kubernetes/

