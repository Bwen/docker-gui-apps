FROM debian:stable

RUN apt-get update && apt-get -y install wget

RUN wget -q https://download.jetbrains.com/cpp/CLion-2020.1.1.tar.gz
RUN tar -xf CLion-2020.1.1.tar.gz && mv clion-2020.1.1 /gui-app
RUN apt-get install -y --fix-missing \
	openssl curl \
	git \
	openjdk-11-jdk \
	make cmake gcc g++

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

RUN apt install sudo

RUN adduser bwen --disabled-password 
RUN chown bwen:bwen -R /gui-app

WORKDIR /home/bwen

ENV USER=bwen
ENV HOME=/home/bwen
ENV PATH=/home/bwen/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/bwen/bin

COPY profile_gitbranch.sh /usr/bin/profile_gitbranch
ENV export TERM=xterm-256color
ENV PS1="\[\033[0;32m\]\t \[\033[0;31m\]\u\[\033[22;33m\]@\[\033[0;36m\]\h:\[\033[0;34m\]\w\$(profile_gitbranch)\[\033[0;37m\]: "
RUN sed -i 's/PS1=/PS2=/g' /etc/bash.bashrc

RUN echo '%bwen ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers

USER bwen
CMD ["/gui-app/bin/clion.sh"]
