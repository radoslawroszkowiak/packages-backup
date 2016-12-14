#!/bin/bash
dir=`dirname $0`

# Get list of all installed packages
$dir/get_installed_packages.sh > $dir/system_packages.txt

# Copy /etc/apt folder
cp -rpv /etc/apt $dir

