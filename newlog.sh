#!/bin/sh

usage() {
    cat << EOF
Usage: newlog [LOG MESSAGE]

Prints a message prefixed with a timestamp to stdout.

Options:
  -h    Show this help message and exit

Example:
  newlog "this is some text to log" >> experiment.log
EOF
    exit 0
}


if [ "$1" = "-h" ]; then
    usage
fi

timestamp=$(date '+%Y-%m-%d %H:%M')
echo $timestamp "$@"
