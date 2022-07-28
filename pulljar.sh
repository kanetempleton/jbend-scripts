#! /bin/bash

echo "Running JBend script: updatejar"

git clone https://github.com/kanetempleton/JBend.git
cd JBend
./build.sh
./makejar.sh
mv JBend.jar ..
cd ..
echo "retrieved newest jar file"
rm -rf JBend

