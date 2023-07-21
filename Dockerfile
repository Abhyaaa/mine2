FROM ubuntu:22.04

#RUN apt-get -y update && \
#    DEBIAN_FRONTEND=noninteractive apt-get -y install ca-certificates curl wget software-properties-common gimp --no-install-recommends && \
#    curl -H 'Cache-Control: no-cache' \
#        https://raw.githubusercontent.com/nimbix/jarvice-desktop/master/install-nimbix.sh \
#        | bash

RUN apt update && apt install -y python3 python3-requests tmux openjdk-19-jre --no-install-recommends

COPY start.sh /start.sh
COPY get_server.py /get_server.py 

COPY NAE/AppDef.json /etc/NAE/AppDef.json
COPY ./NAE/screenshot.png /etc/NAE/screenshot.png

RUN mkdir -p /etc/NAE && touch /etc/NAE/AppDef.json
