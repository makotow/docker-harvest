#!/usr/bin/env bash

mkdir -p docker-vol/graphite/{data,configs} docker-vol/{statsd_config,grafana,harvest}

HARVEST_CONFIG=netapp-harvest.conf
if [ ! -e $HARVEST_CONFIG ]; then
  cp harvest/netapp-harvest.conf docker-vol/harvest/
fi
