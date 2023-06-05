FROM lscr.io/linuxserver/sabnzbd:latest

RUN apk update
RUN apk add clamav
RUN touch /etc/clamav/clamd.conf
RUN echo "TCPSocket 3310" >> /etc/clamav/clamd.conf
RUN echo "TCPAddr clamav" >> /etc/clamav/clamd.conf