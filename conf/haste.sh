#!/bin/bash

set -e
set -u

LOCAL_PASTE_URL="http://127.0.0.1:__PORT__"
PASTE_URL="https://__HASTE_URL__"

_die() {
  printf "Error: %s\n" "$*"
  exit 1
}

check_dependencies() {
  curl -V > /dev/null 2>&1 || _die "This script requires curl."
}

paste_data() {
  json=$(curl -kL -X POST -s -d "$1" "${LOCAL_PASTE_URL}/documents")
  [[ -z "$json" ]] && _die "Unable to post the data to the server."

  key=$(echo "$json" \
    | python -c 'import json,sys;o=json.load(sys.stdin);print o["key"]' \
        2>/dev/null)
  [[ -z "$key" ]] && _die "Unable to parse the server response."

  echo "${PASTE_URL}/${key}"
}

usage() {
  printf "Usage: ${0} [OPTION]...
Read from input stream and paste the data to your Haste server.
For example, to paste the output of the YunoHost diagnosis, you can simply execute the following:
  yunohost tools diagnosis | ${0}
It will return the URL where you can access the pasted data.
Options:
  -h, --help   show this help message and exit
"
}

main() {
  # parse options
  while [ $# -gt 0 ]; do
    case "${1}" in
      --help|-h)
        usage
        exit 0
        ;;
      *)
        echo "Unknown parameter detected: ${1}" >&2
        echo >&2
        usage >&2
        exit 1
        ;;
    esac

    shift 1
  done

  # check input stream
  read -t 0 || {
    echo -e "Invalid usage: No input is provided.\n" >&2
    usage
    exit 1
  }

  paste_data "$(cat)"
}

check_dependencies

main "${@}"
