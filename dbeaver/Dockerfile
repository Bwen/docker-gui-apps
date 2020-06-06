FROM debian

ENV VERSION 6.3.5
RUN apt-get update && apt-get -y install wget
RUN wget -q https://github.com/dbeaver/dbeaver/releases/download/${VERSION}/dbeaver-ce-${VERSION}-linux.gtk.x86_64.tar.gz
RUN tar -xf dbeaver-ce-${VERSION}-linux.gtk.x86_64.tar.gz && mv dbeaver /gui-app

RUN apt-get install -y openjdk-11-jdk

RUN adduser bwen
RUN chown bwen:bwen -R /gui-app

WORKDIR /home/bwen

ENV USER=bwen
ENV HOME=/home/bwen
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/bwen/bin
ENV TERM=xterm-256color
ENV PS1="\[\033[0;32m\]\t \[\033[0;31m\]\u\[\033[22;33m\]@\[\033[0;36m\]\h:\[\033[0;34m\]\w\[\033[0;37m\]:"

USER bwen
CMD ["/gui-app/dbeaver"]
