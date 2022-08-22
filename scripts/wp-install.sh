#!/bin/sh

checkSet() {
  if [ -n "$WP_PATH" ] && [ -n "$WP_HOME" ] && [ -n "$APP_NAME" ]; then
    return 0;
  else
    return 1;
  fi
}

installWp() {
  if ! wp --path="$WP_PATH" core is-installed; then
    wp --path="$WP_PATH" core install --url="$WP_HOME" --title="$APP_NAME" --admin_user=admin --admin_password=password --admin_email=admin@"${WP_HOME##*/}" --path="$WP_PATH"
  else
    echo "wordpress installed"
  fi
}

if checkSet; then
  installWp;
else
  echo "problems";
fi

