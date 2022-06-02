#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export ELITEPHISHER_ROOT="/data/data/com.termux/files/usr/opt/elitephisher"
else
	export ELITEPHISHER_ROOT="/usr/opt/zphisher"
fi

cd $ELITEPHISHER_ROOT
bash ./elitephisher.sh
