#!/bin/bash
sudo apt-get install -y docker.io
sudo bash -c 'echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list'
sudo bash -c 'curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg |apt-key add -'
sudo apt-get update
sudo apt-get install -y kubeadm kubectl kubelet
source <(kubectl completion bash)
echo "source <(kubectl completion bash)" >> ~/.bashrc

