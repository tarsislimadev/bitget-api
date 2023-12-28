#!/usr/bin/sh

. .env

. datetime.sh

path="${1}"

query="${2}"

curl -sL -X GET "https://api.bitget.com/api/v2/${path}?${query}" \
  -H "ACCESS-KEY: ${ACCESS_KEY}" \
  -H "ACCESS-SIGN: ${ACCESS_SIGN}" \
  -H "ACCESS-PASSPHRASE: ${ACCESS_PASSPHRASE}" \
  -H "ACCESS-TIMESTAMP: ${timestamp}" \
  -H "Locale: en-US" \
  -H "Content-Type: application/json"
