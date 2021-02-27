#!bin/sh

# Start influxdb
/usr/sbin/influxd & sleep 3

# Make database
influx -e "CREATE DATABASE grafana"
influx -e "CREATE USER admin42 WITH PASSWORD 'admin42'"
influx -e "GRANT ALL ON grafana TO admin42"

#tail -f /dev/null 