FROM alpine:3.12

RUN apk update && apk add --no-cache \
	--repository http://dl-cdn.alpinelinux.org/alpine/v3.12/community \
	ca-certificates \
	hicolor-icon-theme \
	mesa-dri-intel \
	mesa-gl \
	ttf-dejavu \
	libreoffice

ENV LANG en-US

RUN adduser --shell ash -h /home/gui -D gui

USER gui
RUN mkdir -p /home/gui/.cache
RUN mkdir -p /home/gui/.config
RUN mkdir -p /home/gui/Downloads
RUN mkdir -p /home/gui/Documents
ENTRYPOINT [ "libreoffice" ]
