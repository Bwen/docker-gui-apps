FROM debian

RUN apt-get update && apt-get install -y --no-install-recommends \
	apt-transport-https \
	ca-certificates \
	wget \
	openssl \
	curl \
	git \
	openjdk-11-jdk\
	openjfx

ENV VERSION="2020.1"
ENV FILE="CLion-"${VERSION}".1.tar.gz"

RUN wget -q https://download.jetbrains.com/cpp/${FILE}
RUN mkdir /gui-app
RUN tar -C /gui-app -xf $FILE --strip 1

RUN apt-get update && apt-get install -y \
	make cmake gcc g++

RUN adduser --home /home/gui --disabled-password gui
RUN chown gui:gui -R /gui-app

RUN sed -i 's/PS1=/PS2=/g' /etc/bash.bashrc

USER gui
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN mkdir -p /home/gui/.java
RUN mkdir -p /home/gui/.Clion${VERSION}
RUN mkdir -p /home/gui/.cache
RUN mkdir -p /home/gui/.config
RUN mkdir -p /home/gui/.rustup
RUN mkdir -p /home/gui/.cargo
RUN mkdir -p /home/gui/.xcargo
RUN mkdir -p /home/gui/.local
RUN mkdir -p /home/gui/Workspace

COPY profile_gitbranch.sh /usr/bin/profile_gitbranch
RUN echo 'export TERM=xterm-256color' >> /home/gui/.bashrc
RUN echo 'export PS1="\[\033[0;32m\]\\t \[\033[0;31m\]\u\[\033[22;33m\]@\[\033[0;36m\]\h:\[\033[0;34m\]\w\$(profile_gitbranch)\[\033[0;37m\]: "' >> /home/gui/.bashrc
RUN echo 'export PATH=/home/gui/.cargo/bin:$PATH' >> /home/gui/.bashrc

CMD ["/gui-app/bin/clion.sh"]
