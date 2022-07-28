#! /bin/bash

if [ $# -ne 1 ]; then
echo "usage: jbend <pulljar>"
else

case $1 in
pulljar)
~/jbend-scripts/pulljar.sh
;;
*)
echo "undefined option: $1"
;;
esac

fi
