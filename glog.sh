#!/bin/bash

#git log --decorate --oneline "$@"

cmd="git log --decorate --oneline"
echo $cmd "$@"
$cmd "$@"
