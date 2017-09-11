#!/bin/bash

pwd=`pwd`

docker run -p 9090:9090 --network="host" \
  -v ${pwd}/prometheus.yml:/etc/prometheus/prometheus.yml \
  prom/prometheus
