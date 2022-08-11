#/bin/bash

./filebeat-god -r / -n -p /var/run/mpos-portal/filebeat.pid -- /usr/share/filebeat/bin/filebeat -path.config /etc/filebeat/mpos-portal -path.data /var/lib/filebeat/mpos-portal -path.logs /var/log/filebeat/mpos-portal &

./filebeat-god -r / -n -p /var/run/mpos-api/filebeat.pid -- /usr/share/filebeat/bin/filebeat -path.config /etc/filebeat/mpos-api -path.data /var/lib/filebeat/mpos-api -path.logs /var/log/filebeat/mpos-api &