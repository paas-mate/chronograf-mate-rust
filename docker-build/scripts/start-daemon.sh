#!/bin/bash

mkdir -p $CHRONOGRAF_HOME/logs
nohup $CHRONOGRAF_HOME/mate/chronograf-mate >>$CHRONOGRAF_HOME/logs/chronograf_mate.stdout.log 2>>$CHRONOGRAF_HOME/logs/chronograf_mate.stderr.log &
