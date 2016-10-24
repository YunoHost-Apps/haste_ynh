#
# Common variables
#

APPNAME="haste"

# Gogs version
VERSION="master"

# Remote URL to fetch Haste tarball
HASTE_URL="https://github.com/seejohnrun/haste-server/archive/"${VERSION}".zip"

#
# Common helpers
#

# Download, extract and install Haste to the given directory
# usage: install_haste DESTDIR
install_haste() {
  local DESTDIR=$1
  local TMPDIR=$(mktemp -d)

  # retrieve, extract, install haste
  haste_tarball="/tmp/haste.zip"
  rm -f "$haste_tarball"
  wget -q -O "$haste_tarball" "$HASTE_URL" \
    || ynh_die "Unable to download haste"
  unzip -q "$haste_tarball" -d "$TMPDIR" \
    || ynh_die "Unable to extract haste"
  sudo rsync -a "$TMPDIR"/haste-server-master/* "$DESTDIR"
  rm -rf "$haste_tarball" "$TMPDIR"

	# install haste
	current_dir=$(pwd)
	cd "$DESTDIR"
	sudo npm install
	cd $current_dir
}
