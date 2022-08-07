#!/bin/bash

mkdir -p $CHRONOGRAF_HOME/logs
chronograf --influxdb-url http://${INFLUX1_HOST}:8086 >>$CHRONOGRAF_HOME/logs/chronograf.stdout.log 2>>$CHRONOGRAF_HOME/logs/chronograf.stderr.log &
