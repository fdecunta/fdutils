#!/bin/sh

usage() {
    cat << EOF
Usage: dumblog [OPTIONS]

Opens the default editor to write a log entry. The content is 
prefixed with a timestamp and printed to stdout.

Options:
  -h    Show this help message and exit

Example:
  dumblog >> experiment.log
EOF
    exit 0
}


if [ "$1" = "-h" ]; then
    usage
fi

tmp=$(mktemp)
timestamp=$(date '+%Y-%m-%d %H:%M')

${EDITOR:-vi} $tmp && sed "s/^/$timestamp /" $tmp && rm -f $tmp
