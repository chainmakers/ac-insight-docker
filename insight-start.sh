#!/bin/bash

AC_NAME=CHAIN
ac_name=`echo "$AC_NAME" | tr '[:upper:]' '[:lower:]'`
JSON=`cat $AC_NAME.json`
AC_UI="https://github.com/chainmakers/insight-ui-chain#dev"

docker run \
  --rm \
  -d -ti \
  -e JSON="$JSON" \
  -e AC_UI=$AC_UI \
  --net=host \
  --name=insight \
  kmdplatform/insight

