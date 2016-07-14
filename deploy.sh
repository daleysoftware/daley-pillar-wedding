#!/bin/bash

cd $(dirname $0)

HOST='daleypillarwedding.com'
USER='prod@daleypillarwedding.com'

rm -rf /tmp/daley-pillar-wedding
mkdir /tmp/daley-pillar-wedding
make
cp -r _site/* /tmp/daley-pillar-wedding
cd /tmp

echo -n 'Password: '
read -s PASSWD

lftp -u $USER,$PASSWD $HOST -e "mirror -R daley-pillar-wedding .; exit"
