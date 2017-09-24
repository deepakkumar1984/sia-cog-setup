# Sia Cog Server and Client Easy Setup

## Initialise

Please clone/download the repo: https://github.com/deepakkumar1984/sia-cog-setup.git

- git clone https://github.com/deepakkumar1984/sia-cog-setup.git
- cd sia-cog-setup

## Configure Server
This step will start downloading the source from git, install the dependencies and configure the environment.

Run the following command: 
```bash
sudo sh siacog-server.sh configure
```


## Run Server
This step is to run the server in port 5555. You can change the port in the runserver.py file.
```bash
sudo sh siacog-server.sh run
```


## Update Server
Download the latest version from git and reconfigure the server. Please ensure to take backup of the "data" folder otherwise it will get overridden by the update command.

```bash
sudo sh siacog-server.sh update
```

## Configure Client
The client is written in dotnet core. Please follow the steps using the link below to configre your environment.
https://www.microsoft.com/net/core

After configuring the dotnet core, please run the below command:

```bash
sudo sh siacog-client.sh configure
```

## Run Client
This step is to run the web client in port 5000. The steps to change the port will be defined later.Since this is a prerelease version, this client is not intended for production environment. But you are most welcome to try.

```bash
sudo sh siacog-client.sh run
```

