#!/usr/bin/env sh

PROTECTED_BRANCHES=('master' 'dev')  #Add more branches here to prevent direct commits.

branch="$(git rev-parse --abbrev-ref HEAD)"

for val in "${PROTECTED_BRANCHES[@]}"
do
   if [ "$branch" = "$val" ]; then
        echo "You can't commit directly to $val branch"
        exit 1
    fi
done