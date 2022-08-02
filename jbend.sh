#! /bin/bash

if [ $# -ne 1 ]; then
echo "usage: jbend <getjar,updatejar>"
else

case $1 in
getjar)
~/me/script/jbend-scripts/pulljar.sh
;;
updatejar)
pwd
;;
*)
echo "undefined option: $1"
;;
esac

fi
