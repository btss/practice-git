#!/bin/bash

## This file needs to be executed by 'source init-var.sh'. It cannot be run directly.

if [ ! -z ${PGPATH:+x}  ]; then return ; fi

uninitpg () {
	export PATH=${PATH/:${PGPATH}/}
	unset PGPATH
	unset uninitpg
}

echo "$( cd "$(dirname "$BASH_SOURCE")" ; pwd -P )"
export PGPATH="$( cd "$(dirname "$BASH_SOURCE")" ; pwd -P )"
export PATH=${PATH}:${PGPATH}

echo "PGPATH=${PGPATH}"

