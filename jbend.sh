#! /bin/bash

if [ ${#JBEND} -lt 1 ]; then
echo "please set your path to your JBend scripts folder by running:
      jbend source <fullpath to this folder>"
fi

if [ $# -lt 1 ]; then
echo "usage: jbend <getjar,updatejar>"
else

case $1 in
source)
#echo "$2"
JBEND="$2"
echo sourced JBend to "$JBEND"
;;
getjar)
$JBEND/pulljar.sh
;;
updatejar)
cd universe/res/lib
rm JBend.jar
$JBEND/pulljar.sh
cd ../../..
;;
*)
echo "undefined option: $1"
;;
esac

fi
