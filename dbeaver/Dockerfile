FROM debian

RUN apt-get update && apt-get install -y --no-install-recommends \
	apt-transport-https \
	ca-certificates \
	wget \
	openssl \
	curl \
	git \
	openjdk-11-jdk \
	libswt-gtk-4-jni

ENV VERSION="7.1.0"
ENV FILE="dbeaver-ce-"${VERSION}"-linux.gtk.x86_64.tar.gz"

RUN wget -q https://github.com/dbeaver/dbeaver/releases/download/${VERSION}/${FILE}

RUN mkdir /gui-app
RUN tar -C /gui-app -xf $FILE --strip 1

RUN adduser --home /home/gui --disabled-password gui
RUN chown gui:gui -R /gui-app

USER gui
RUN mkdir -p /home/gui/.java
RUN mkdir -p /home/gui/.local
RUN mkdir -p /home/gui/.eclipse

CMD ["/gui-app/dbeaver"]
