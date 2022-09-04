#! /bin/sh

usage="[-h] <ansible-parameter>
typical usage: ./start_playbook.sh --tags rofi --skip-tags install"
if [ $1 == "-h" ]; then
  echo "$usage"
else
  SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )" 
  git -C $SCRIPTPATH pull
  ansible-playbook dotfile.playbook -i hosts.yaml "$@"
fi
