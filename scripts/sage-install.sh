#! /bin/sh

if ! [ -d bedrock/web/app/themes/sage ]; then
  composer -q -d bedrock/web/app/themes create-project roots/sage sage dev-main
  if wp --path="$WP_PATH" theme is-installed sage; then
    wp --path="$WP_PATH" theme activate sage;
  else
    echo $? && exit
  fi
elif wp --path="$WP_PATH" theme is-installed sage; then
  wp --path="$WP_PATH" theme activate sage;
else
  echo $? && exit
fi