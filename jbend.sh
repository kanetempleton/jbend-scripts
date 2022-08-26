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
initapp)
cd universe
mkdir -p config
cd config
touch application.conf
echo "app-id: yourApp

data:
source 127.0.0.1 4343

login:
source 127.0.0.1 4344

console:
listen

proxy:
listen 80
map 127.0.0.1 4444

webserver:
listen 4444
home res/front/

loginserver:
listen 4344

dataserver:
listen 4343
source 127.0.0.1 dbname
credentials root admin

EOF" > application.conf

cd ..
touch routes.cfg
echo "/login -> /pages/login/login.html" > routes.cfg

echo "Config files created. Please check universe/config/application.conf 
to change parameters that define your application"

;;
*)
echo "undefined option: $1"
;;
esac

fi
