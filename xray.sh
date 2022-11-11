#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ce6a27a2-3106-4a60-be24-697fad35af3c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

