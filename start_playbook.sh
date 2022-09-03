#! /bin/sh
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )" 
git -C $SCRIPTPATH pull
ansible-playbook dotfile.playbook -i hosts.yaml
