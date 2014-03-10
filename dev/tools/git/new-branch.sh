#!/bin/sh
# git-create-branch

if [ $# -ne 1 ]; then
echo 1>&2 Usage: $0 branch_name [start_point]
exit 127
fi

git branch $1 $2
git push -u origin $1
git checkout $1
git pull
