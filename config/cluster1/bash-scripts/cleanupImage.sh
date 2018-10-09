#!/bin/bash
ORGPATH=`pwd`
cd $HOME/mgt
ansible picluster -i inventory -m shell -a 'docker rm $(docker ps -qa)'
ansible picluster -i inventory -m shell -a 'docker image prune -f -a'
ansible picluster -i inventory -m shell -a 'docker image list'
cd $ORGPATH
