#!/bin/bash

set -x

source ./conf.sh

rm -rf elasticsearch*
wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/zip/elasticsearch/${ES_VER}/elasticsearch-${ES_VER}.zip -O elasticsearch.zip
unzip elasticsearch.zip

cd elasticsearch-${ES_VER}
./bin/plugin install -b ${PROMETHEUS_EXPORTER_URL}
