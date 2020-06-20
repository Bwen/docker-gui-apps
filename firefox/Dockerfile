FROM alpine

RUN apk update && apk add --no-cache \
	firefox \
	alsa-lib \
	ca-certificates \
	hicolor-icon-theme \
	mesa-dri-intel \
	mesa-gl \
	ttf-dejavu \
	font-noto \
	font-noto-extra \
	font-noto-cjk \
	font-noto-cjk-extra

ENV LANG en-US

RUN adduser --shell ash -h /home/gui -D gui

USER gui
RUN mkdir -p /home/gui/.cache
RUN mkdir -p /home/gui/.mozilla
RUN mkdir -p /home/gui/Downloads
CMD ["/usr/bin/firefox"]
