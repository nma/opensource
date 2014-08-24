#!/usr/bin/env bash
# Script to automatically upload the new theme to redmine 

set -x

THEME_NAME="coffee"
THEME_LOCATION="/vagrant"

cp -R ${THEME_LOCATION}/${THEME_NAME}/ /usr/share/redmine/public/themes

# Restart apache2
sudo service apache2 restart
