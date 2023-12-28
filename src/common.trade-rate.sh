#!/usr/bin/sh

## inputs

path="common/trade-rate"

symbol="${1}"

business="${2}"

## runners

resp=$( . get.sh "${path}" "symbol=${symbol}&business=${business}" )

## outputs

echo "resp: ${resp}"
