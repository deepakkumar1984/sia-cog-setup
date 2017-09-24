#!/bin/bash

if [ "$1" = "configure" ]
then
    echo "Configuring SIA-COG Web Client..."
    sudo rm -r SiaCog-Client_v1.0*
    sudo rm -r siacogclientv1
    sudo apt-get update
    sudo apt-get install git -y
    sudo apt-get install unzip -y
    wget https://github.com/deepakkumar1984/sia-cog-setup/files/1327381/SiaCog-Client_v1.0-beta.1.zip
    sudo unzip -d siacogclientv1 SiaCog-Client_v1.0-beta.1.zip
    cd siacogclientv1
    dotnet restore
    sudo rm -r SiaCog-Client_v1.0*
    echo "Configuring SIA-COG Web Client... Done"
    echo "Please run command \"sh siacog-client.sh run\""
fi

if [ "$1" = "run" ]
then
    cd siacogclientv1
    dotnet SiaCog.Client.dll
fi