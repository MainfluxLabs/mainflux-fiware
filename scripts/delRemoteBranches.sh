#!/bin/bash

# N.B.
# You should facilitate futher GitHub asking in the loop
# by adding git credentials, as explained here: https://git-scm.com/docs/git-credential-store,
# and thus preventing GitHub to prompt for username/pass every time

REMOTE_BRANCHES=`git branch -r | grep -v -E "master|develop" | sed 's#origin/\(.*\)#\1#'`

for branch in $REMOTE_BRANCHES; do
    git push origin --delete $branch
done
