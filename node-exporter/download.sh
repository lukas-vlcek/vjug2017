#!/bin/bash

set -x

uname -a

arch=`getconf LONG_BIT`
if [ "${arch}" != "64" ]; then
  echo "Unsupported architecture"
  exit;
fi

source ./conf.sh

URL=https://github.com/prometheus/node_exporter/releases/download/v${NE_VER}/${FILE_NAME}.tar.gz;

if [ "linux" != "${OS_TYPE}" ] && [ "darwin" != "${OS_TYPE}" ]; then
  echo "${OS_TYPE}" is not supported ATM
  exit
fi

rm -rf node_exporter*
wget ${URL} -O node_exporter.tar.gz
tar -xvzf node_exporter.tar.gz
