#!/usr/bin/env sh

branch="$(git rev-parse --abbrev-ref HEAD)"

BRANCHES=('master' 'dev')

for val in "${BRANCHES[@]}"
do
   if [ "$branch" = "$val" ]; then
        echo "You can't commit directly to $val branch"
        exit 1
    fi
done