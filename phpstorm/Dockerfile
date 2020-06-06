FROM debian

RUN apt-get update && apt-get -y install wget

RUN wget -q https://download.jetbrains.com/webide/PhpStorm-2019.3.4.tar.gz
RUN tar -xf PhpStorm-2019.3.4.tar.gz && mv PhpStorm-193.6911.26 /gui-app
RUN apt-get install -y \
	openssl curl \
	git \
	openjdk-11-jdk \
	make cmake gcc g++

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

RUN apt install sudo

ENV USER=$USER
RUN echo $USER
RUN adduser $USER --disabled-password 
RUN chown $USER:$USER -R /gui-app

WORKDIR /home/$USER

ENV HOME=/home/$USER
ENV PATH=/home/$USER/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/$USER/bin

COPY profile_gitbranch.sh /usr/bin/profile_gitbranch
ENV export TERM=xterm-256color
ENV PS1="\[\033[0;32m\]\t \[\033[0;31m\]\u\[\033[22;33m\]@\[\033[0;36m\]\h:\[\033[0;34m\]\w\$(profile_gitbranch)\[\033[0;37m\]: "
RUN sed -i 's/PS1=/PS2=/g' /etc/bash.bashrc

RUN echo '%$USER ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers

RUN apt-get install -y php7.3-cli php-xml
RUN apt-get update && apt-get install -y  --fix-missing \
	php-mbstring \
	php-common \
	php-mysql \
	php-xmlrpc \
	php-cgi \
	php-curl \
	php-gd \
	php-cli \
	php-fpm \
	php-apcu \
	php-pear \
	php-dev \
	php-imap \
	libmcrypt-dev \
	php-imagick \
	php-intl \
	php-zip \
	php-xdebug \
	php-redis

USER $USER
CMD ["/gui-app/bin/phpstorm.sh"]
