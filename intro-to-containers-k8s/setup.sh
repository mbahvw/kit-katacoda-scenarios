#! /bin/bash
mkdir ~/kubernetes-yaml
cd ~/kubernetes-yaml
curl -LO https://raw.githubusercontent.com/kube-academy/katacoda-scenarios/master/intro-to-containers-k8s/assets/deployment.yaml
curl -LO https://raw.githubusercontent.com/kube-academy/katacoda-scenarios/master/intro-to-containers-k8s/assets/service.yaml
cd ~
curl -LO https://raw.githubusercontent.com/kube-academy/katacoda-scenarios/master/intro-to-containers-k8s/assets/hugosite.tar.gz
tar -zxf ~/hugosite.tar.gz
rm -f ~/hugosite.tar.gz
docker pull alpine
docker pull nginx:stable-alpine
docker pull registry:2