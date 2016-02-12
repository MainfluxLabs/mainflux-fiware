#!/bin/bash

REMOTE_BRANCHES=`git branch -r | grep -v -E "master|develop" | sed 's#origin/\(.*\)#\1#'`

for branch in $REMOTE_BRANCHES; do
    git push origin --delete $branch
done
