#!/bin/bash
packages=`aptitude search '?installed ?not(?automatic)' | awk '{print $2}'`

printf "${packages[@]}"
