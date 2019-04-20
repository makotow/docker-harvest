#!/bin/bash

# sleep for a bit to let automation of the grafana api key if part of a larger container application set
sleep 60
/etc/init.d/netapp-harvest start

while :; do
	sleep 3000
done

