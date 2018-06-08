#!/bin/bash

#git commit --allow-empty "$@"

cmd="git commit --allow-empty"
echo $cmd "$@"
$cmd "$@"

