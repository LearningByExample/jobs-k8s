#!/bin/sh -

set -o errexit

echo "downloading file.."
cd /tmp/download
wget -q -c http://files.grouplens.org/datasets/movielens/ml-latest.zip 
echo "file downloaded"

echo "unzip file.."
unzip -o ml-latest.zip
echo "file unziped"

export PGHOST=$MOVIES_DB_CLUSTER_SERVICE_HOST
export PGPORT=$MOVIES_DB_CLUSTER_SERVICE_PORT_POSTGRESQL
export PGDATABASE="movies"
export PGUSER=`cat /etc/db-credentials/username`
export PGPASSWORD=`cat /etc/db-credentials/password`

echo "running init script.."
psql < /usr/src/init.sql                                                           
echo "init script completed"

echo "running load script.."
psql < /usr/src/load.sql
echo "load script completed"

echo "job completed"

return 0