#
# Common variables
#

APPNAME="haste"
app=${YNH_APP_INSTANCE_NAME:-haste}

# Haste version
VERSION="master"

# set globals variables
DESTDIR="/opt/"${app}
DATA_PATH="/home/yunohost.app/"$app

# Remote URL to fetch Haste tarball
HASTE_URL="https://github.com/seejohnrun/haste-server/archive/"${VERSION}".zip"

# Source YunoHost helpers
source /usr/share/yunohost/helpers

#
# Common helpers
#

check_or_install_npm() {
  if ! dpkg -s npm | grep "installed" > /dev/null 2>&1 \
       || dpkg -s nodejs-legacy | grep "installed" > /dev/null 2>&1; then
    sudo apt-get update
    sudo apt-get install -y npm nodejs-legacy
  fi
}

pre_inst_haste() {
  # retrieve, extract, copy haste, add user if necessary
  local TMPDIR=$(mktemp -d)
  local HASTE_SOURCE=$1

  haste_tarball="/tmp/haste.zip"
  rm -f "$haste_tarball"
  if [ "$HASTE_SOURCE" = "backup" ]
  then
    # Restore the app and data files
    sudo cp -a ./www "$DESTDIR"
    sudo cp -a ./data/. "$DATA_PATH"
    # Restore directories and permissions
    sudo chown -R "$app":"$app" "$DESTDIR" "$DATA_PATH"
  else
    wget -q -O "$haste_tarball" "$HASTE_URL" \
      || ynh_die "Unable to download haste"
    unzip -q "$haste_tarball" -d "$TMPDIR" \
      || ynh_die "Unable to extract haste"
    sudo rsync -a "$TMPDIR"/haste-server-master/* "$DESTDIR"
  fi
  rm -rf "$haste_tarball" "$TMPDIR"

  # Add user if not exist
  id -g "$app" &>/dev/null || sudo addgroup "$app" --system --quiet
  id -u "$app" &>/dev/null || sudo adduser "$app" \
      --ingroup "$app" --system --quiet --shell /bin/bash

  # Configure init script
  sudo cp ../conf/"$app".service /etc/systemd/system/
  sudo systemctl daemon-reload
  sudo systemctl enable "$app".service
  }

# Download, extract and install Haste to the given directory
# usage: install_haste DESTDIR
install_haste() {
  local DOMAIN=$1
  local YNH_PATH=$2
  local IS_PUBLIC=$3

  check_or_install_npm
  pre_inst_haste none

	# install haste
	current_dir=$(pwd)
	cd "$DESTDIR"
	sudo npm install
	cd $current_dir

  sudo mkdir -p $DATA_PATH
  sudo chown -R "$app":"$app" $DESTDIR $DATA_PATH

  # Configure haste with config.js file
  sudo cp ../conf/config.js "$DESTDIR"/config.js
  sudo sed -i "s@YNH_DATA_PATH@$DATA_PATH@g" "$DESTDIR"/config.js

  # Modify Nginx configuration file and copy it to Nginx conf directory
  sed -i "s@PATHTOCHANGE@${YNH_PATH%/}@g" ../conf/nginx.conf
  sudo cp ../conf/nginx.conf /etc/nginx/conf.d/$domain.d/"$app".conf

  # If app is public, add url to SSOWat conf as skipped_uris
  if [[ $IS_PUBLIC -eq 1 ]]; then
    # unprotected_uris allows SSO credentials to be passed anyway.
    ynh_app_setting_set "$app" unprotected_uris "/"
  fi

  # Reload services
  sudo systemctl reload nginx.service

  # install haste cli client
  sed -i "s@YNH_HASTE_URL@${DOMAIN}${path%/}@g" ../conf/haste.sh
  sudo cp ../conf/haste.sh /usr/bin/"$app"
  sudo chmod +x /usr/bin/"$app"
}
