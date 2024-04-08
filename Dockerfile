FROM lscr.io/linuxserver/sabnzbd:latest

ENV clamav_host=$clamav_host

RUN apk update
RUN apk add clamav
RUN touch /etc/clamav/clamd.conf
RUN echo "TCPSocket 3310" >> /etc/clamav/clamd.conf
RUN echo "TCPAddr $clamav_host" >> /etc/clamav/clamd.conf