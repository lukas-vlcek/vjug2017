#!/bin/bash

NE_VER=0.14.0

OS_TYPE=`uname`
OS_TYPE="$(tr [A-Z] [a-z] <<< "$OS_TYPE")"

FILE_NAME=node_exporter-${NE_VER}.${OS_TYPE}-amd64
