#!/bin/bash
dir=`dirname $0`

# read list of packages into $packages array
IFS=$'\n' read -d '' -r -a packages < system_packages.txt

cp -rpv $dir/apt/* /etc/apt/

aptitude update
aptitude install -y "${packages[@]}"
