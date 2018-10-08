#!/bin/bash
GOODPATH=`pwd`
cd kubeplay; helm package charts/kubeplay-arm32v7/ --app-version 0.1.0 --destination $GOODPATH/helmrepos/kubedge1/; cd $GOODPATH
cd kubedge; helm package charts/kubedge-arm32v7/ --app-version 0.1.0 --destination $GOODPATH/helmrepos/kubedge1/; cd $GOODPATH
cd kubesim_5gc; helm package charts/kubesim-5gc-arm32v7/ --app-version 0.1.0 --destination $GOODPATH/helmrepos/hack4easy/; cd $GOODPATH
cd kubesim_elte; helm package charts/kubesim-elte-arm32v7/ --app-version 0.1.0 --destination $GOODPATH/helmrepos/hack4easy/; cd $GOODPATH
cd kubesim_lte; helm package charts/kubesim-lte-arm32v7/ --app-version 0.1.0 --destination $GOODPATH/helmrepos/hack4easy/; cd $GOODPATH
cd kubesim_epc; helm package charts/kubesim-epc-arm32v7/ --app-version 0.1.0 --destination $GOODPATH/helmrepos/hack4easy/; cd $GOODPATH
cd kubesim_nr; helm package charts/kubesim-nr-arm32v7/ --app-version 0.1.0 --destination $GOODPATH/helmrepos/hack4easy/; cd $GOODPATH
cd helmrepos/kubedge1; helm repo index .; cd $GOODPATH
cd helmrepos/hack4easy; helm repo index .; cd $GOODPATH
cd helmrepos; git add kubedge1/index.yaml; git add hack4easy/index.yaml; git commit -m "update charts"; git push; cd $GOODPATH
