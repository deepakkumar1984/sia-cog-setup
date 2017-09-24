#!/bin/bash

if [ "$1" = "configure" ]
then
    echo "Configuring SIA-COG Server..."
    sudo apt-get update
    sudo apt-get install git
    git clone https://github.com/deepakkumar1984/sia-cog.git
    cd sia-cog/install
    if [ "$2" = "cpu" ]
    then
        sudo sh installdep-cpu.sh
    fi

    if [ "$2" = "gpu" ]
    then
        sudo sh installdep-gpu.sh
    fi

    cd ..
    cd vis
    make
    echo "Configuring SIA-COG Server... Done"
    echo "Please run command \"sh siacog-server.sh run\""
fi

if [ "$1" = "update" ]
then
    cd sia-cog
    git pull
fi

if [ "$1" = "run" ]
then
    cd sia-cog
    python runserver.py
fi