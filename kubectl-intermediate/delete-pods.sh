#!/bin/bash

cd ~/

kubectl delete -f  label-deploy.yaml

kubectl delete deployment nginx-deployment

