#!/bin/bash
set +e

cp /data/input/index.rst /data/source/index.rst

# Execute install script
source /data/input/setup.sh

cd /data/ && make xml
cp /data/build/xml/index.xml /data/output/

echo "Successful"
