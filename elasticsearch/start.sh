#!/bin/bash

source ./conf.sh

cd elasticsearch-${ES_VER}
./bin/elasticsearch #--network.host=10.43.21.16 #--path.conf=<relative/path> 
