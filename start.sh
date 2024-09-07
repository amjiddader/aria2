#!/bin/bash -eu
## Run a script in backgroudn
git clone "$GIT_UP" /list
chmod 777 -R /list
cd /list && bash run.sh & 
## Now start the app
export APP_VERSION=$(cat /app/APP_VERSION)

if [ "$PGID" != "0" ]; then
  $(dirname $0)/init.sh chpst -u junv ./forego start
else
  ./forego start
fi
