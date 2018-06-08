#!/bin/bash

#git merge --no-ff --no-edit "$@"

cmd="git merge --no-ff --no-edit"
echo $cmd "$@"
$cmd "$@"
