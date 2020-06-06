FROM debian

RUN apt-get update && apt-get -y install wget openssl curl

COPY Postman-linux-x64-7.20.1.tar.gz .
RUN tar -xf Postman-linux-x64-7.20.1.tar.gz && mv Postman /gui-app

RUN apt-get -y install libgtk-3.0 libx11-xcb1 libxss1 libnss3 libasound2

RUN adduser bwen 
RUN chown bwen:bwen -R /gui-app

WORKDIR /home/bwen

ENV USER=bwen
ENV HOME=/home/bwen
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/bwen/bin

RUN echo '%bwen ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers

USER bwen
CMD ["/gui-app/app/Postman"]
