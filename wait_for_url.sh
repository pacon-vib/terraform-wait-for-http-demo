#!/bin/bash

echo "Running wait script" >&2

echo "$@" >&2

echo "I think the URL is $1" >&2

sleep 2

echo >&2 "Done wait script"

echo '{"url": "'"$1"'"}'
