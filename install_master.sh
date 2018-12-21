#!/bin/bash
sudo apt-get install -y docker.io
sudo bash -c 'echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list'
sudo bash -c 'curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg |apt-key add -'
sudo apt-get update
sudo apt-get install -y kubeadm kubectl kubelet
sudo kubeadm init --pod-network-cidr 192.168.0.0/16
echo "2 minutky cakania ..."
sleep 120
echo "Pokracujem"
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f \
https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/hosted/etcd.yaml
kubectl apply -f \
https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/hosted/etcd.yaml
kubectl apply -f \
https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/rbac.yaml
source <(kubectl completion bash)
echo "source <(kubectl completion bash)" >> ~/.bashrc

