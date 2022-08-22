#!/bin/sh

if ! [ -d ./bedrock ]; then
  composer create-project roots/bedrock && composer require roots/acorn -d bedrock
elif [ -d ./bedrock ]; then
  composer require roots/acorn -d bedrock -q
else
  echo $? && exit
fi
