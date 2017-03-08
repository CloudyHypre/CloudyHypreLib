#!/bin/bash
#setup CloudyHypreLib

echo "  ____ _                 _       _   _                      _     _ _     "
echo " / ___| | ___  _   _  __| |_   _| | | |_   _ _ __  _ __ ___| |   (_) |__  "
echo "| |   | |/ _ \| | | |/ _' | | | | |_| | | | | '_ \| '__/ _ \ |   | | '_ \ "
echo "| |___| | (_) | |_| | (_| | |_| |  _  | |_| | |_) | | |  __/ |___| | |_) |"
echo " \____|_|\___/ \__,_|\__,_|\__, |_| |_|\__, | .__/|_|  \___|_____|_|_.__/ "
echo "                           |___/       |___/|_|                           "

which make
which gcc
which git

read -p "Everything installed? [Y/n]" in
if [ "$in" == "Y" ] || [ "$in" == "y" ] || [ "$in" == "" ]; then
    echo
else
    exit 0
fi

echo Installing missing dependencies

if [ ! -d spring-server ]; then
    echo Installing spring server
    git clone git@github.com:CloudyHypre/spring-server.git
    echo
fi

make
