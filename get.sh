#!/usr/bin/sh

. .env

path="${1}"

parameters="${2}"

curl -sL -X GET "https://api.bitget.com/api/v2/${path}?${parameters}"
