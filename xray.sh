#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6e8ef0e8-bc83-4cac-a825-3aeb6cf0d046"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

