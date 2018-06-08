#!/bin/bash

# ref: https://git-scm.com/docs/git-merge

# before merge
#          A---B---C topic
#         /
#    D---E---F---G master

# after merge: > git merge topic
#          A---B---C topic
#	      /          \
#    D---E---F---G---H master

source $(dirname $BASH_SOURCE)/_initpg.sh

git init

git commit --allow-empty -m "D"; sleep 1s;
git commit --allow-empty -m "E"; sleep 1s;

git branch topic

git checkout topic
git commit --allow-empty -m "A"; sleep 1s;

git checkout master
git commit --allow-empty -m "F"; sleep 1s;

git checkout topic
git commit --allow-empty -m "B"; sleep 1s;

git checkout master
git commit --allow-empty -m "G"; sleep 1s;

git checkout topic
git commit --allow-empty -m "C"; sleep 1s;

git checkout master
