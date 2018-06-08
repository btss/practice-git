#!/bin/bash

# ref: https://gist.github.com/datagrok/4221767

# logitically:
#
# *   f19e46d (dev) Merge branch 'master' into dev
# |\
# | * 600a33f (HEAD, master) commit
# * |   c9ccbf1 Merge branch 'master' into dev
# |\|
# | * 4c1fb52 commit
# * |   dfdcb8a Merge branch 'master' into dev
# |\|
# | * 42b1c24 commit
# * |   7714be3 Merge branch 'master' into dev
# |\|
# | * f7eae2d commit
# |/
# * 885700a initial empty commit

source $(dirname $BASH_SOURCE)/_initpg.sh

git init
git commit --allow-empty -m "initial empty commit"
git branch dev
for x in `seq 4`; do
    git commit --allow-empty -m "commit"
    git checkout dev
    git merge --no-ff --no-edit master
    git checkout master
done
