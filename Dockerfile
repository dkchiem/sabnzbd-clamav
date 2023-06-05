FROM lscr.io/linuxserver/sabnzbd:latest

RUN apk update
RUN apk install clamdscan