#!/bin/bash
set -e

#
if [ -n "${SERVER_ID}" ]; then
  echo "${SERVER_ID}" > /data/zookeeper/myid
fi

conf_file="/zookeeper-${ZOOKEEPER_VERSION}/conf/zoo.cfg"
if [ -n "${SERVERS}" ]; then
  i=1
  for server in ${SERVERS//,/ }
  do
    echo "server.${i}=${server}:2888:3888" >> $conf_file
    ((i++))
  done
fi

exec "$@"
