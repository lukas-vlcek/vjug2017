#!/bin/bash

uname -a

arch=`getconf LONG_BIT`
if [ "${arch}" != "64" ]; then
  echo "Unsupported architecture"
  exit;
fi

os_type=`uname`
os_type="$(tr [A-Z] [a-z] <<< "$os_type")"

url=https://github.com/prometheus/node_exporter/releases/download/v0.14.0/node_exporter-0.14.0.${os_type}-amd64.tar.gz;

if [ "linux" != "${os_type}" ] && [ "darwin" != "${os_type}" ]; then
  echo "${os_type}" is not supported ATM
  exit
fi

wget ${url}

echo "Extract archive:"
echo "  tar -xvzf node_exporter..."
