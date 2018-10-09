#!/bin/bash
ORGPATH=`pwd`
cd $HOME
helm repo remove kubedge1
helm repo remove hack4easy
helm repo add kubedge1 'https://raw.githubusercontent.com/kubedge/helmrepos/arm32v7/kubedge1/'
helm repo add hack4easy 'https://raw.githubusercontent.com/kubedge/helmrepos/arm32v7/hack4easy/'
helm repo list
helm repo update
helm list
helm search
helm install hack4easy/kubesim-5gc-arm32v7
helm install hack4easy/kubesim-elte-arm32v7
helm install hack4easy/kubesim-epc-arm32v7
helm install hack4easy/kubesim-lte-arm32v7
helm install hack4easy/kubesim-nr-arm32v7
helm install kubedge1/kubeplay-arm32v7
helm install kubedge1/kubedge-arm32v7
helm ls
cd $ORGPATH
