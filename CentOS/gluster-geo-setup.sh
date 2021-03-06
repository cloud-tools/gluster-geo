#!/bin/sh

geosetup(){
  touch /var/lib/glusterd/geo-replication/authorized_keys
  chmod 600 /var/lib/glusterd/geo-replication/authorized_keys
  sed 's#/nonexistent/gsyncd#/usr/libexec/glusterfs/gsyncd#g' -i /var/lib/glusterd/geo-replication/gsyncd_template.conf; \
  sed '/^\[ssh-port]$/,/^\[/ s/^value=22$/value=2222/' -i /etc/glusterfs/gsyncd.conf; \

  echo "Script Ran Successfully"
  exit 0
}

geosetup

