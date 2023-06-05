FROM lscr.io/linuxserver/sabnzbd:latest

RUN apt update
RUN apt install clamdscan