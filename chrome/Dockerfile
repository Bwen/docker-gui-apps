FROM debian

RUN apt-get update && apt-get -y install wget openssl curl

COPY google-chrome-stable_current_amd64.deb .
RUN apt-get -y update
RUN apt-get -y install sudo libgtk-3.0 libx11-xcb1 libxss1 libnss3 libasound2 fonts-liberation libappindicator3-1 xdg-utils

RUN dpkg -i google-chrome-stable_current_amd64.deb

RUN apt-get update && apt-get install -y \
	apt-transport-https \
	ca-certificates \
	gnupg \
	hicolor-icon-theme \
	libcanberra-gtk* \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	libpango1.0-0 \
	libpulse0 \
	pulseaudio \
	libv4l-0 \
	fonts-symbola \
	--no-install-recommends

RUN adduser bwen --disabled-password 
RUN echo '%bwen ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers
WORKDIR /home/bwen

ENV USER=bwen
ENV HOME=/home/bwen
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/bwen/bin

USER bwen
CMD ["/opt/google/chrome/chrome"]
