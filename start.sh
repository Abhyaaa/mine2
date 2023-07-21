#!/bin/sh
cd /data
mkdir -p minecraft_server
cd minecraft_server/
rm -f server.jar
rm -f eula.txt
python3 /get_server.py # --version 1.20.1
#wget https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar
java -Xmx1024M -Xms1024M -jar server.jar nogui || echo Ok
echo 'eula=True' > eula.txt
#sed -i 's/server-port=25565/server-port=2222/' server.properties
java -Xmx1024M -Xms1024M -jar server.jar nogui
