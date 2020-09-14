#!/usr/bin/env bash

#
# This script only for auto test
# For jenkins
#

function myecho(){
    [ ${2:-0} -eq 0 ] && echo -e "\e[1;32m$*\e[0m" || { echo -e "\e[1;31m$*\e[0m"; exit $2; }
}

function prepare(){
    cd /var/tmp
    myecho "Install python requirements!"
    pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
    [ $? -ne 0 ] && myecho "Install python requirements failed!"
    myecho "Install python requirements successful!"
}

function main(){
    cd /var/tmp
    prepare
    pytest
}

main
