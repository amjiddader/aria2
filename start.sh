#!/bin/bash -eu
## Run a script in backgroudn
cd /list && bash run.sh & 
## Now start the app
export APP_VERSION=$(cat /app/APP_VERSION)

if [ "$PGID" != "0" ]; then
  $(dirname $0)/init.sh chpst -u junv ./forego start
else
  ./forego start
fi
