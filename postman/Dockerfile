FROM debian

RUN apt-get update && apt-get install -y --no-install-recommends \
	apt-transport-https \
	ca-certificates \
	wget \
	openssl \
	curl \
	libgtk-3.0 \
	libx11-xcb1 \
	libxss1 \
	libnss3 \
	libasound2 \
	libxtst6

ENV FILE="linux64"
RUN wget -q https://dl.pstmn.io/download/latest/$FILE

RUN mkdir /gui-app
RUN tar -C /gui-app -xf $FILE --strip 1

RUN adduser --home /home/gui --disabled-password gui
RUN chown gui:gui -R /gui-app

USER gui
RUN mkdir -p /home/gui/Postman
RUN mkdir -p /home/gui/.cache
RUN mkdir -p /home/gui/.swt

CMD ["/gui-app/app/Postman"]
