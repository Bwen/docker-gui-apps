FROM alpine:latest

RUN apk update && apk add openjdk8 ttf-dejavu
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk update && apk add \
	boost-program_options \
	libreoffice 
	
RUN adduser bwen --disabled-password 
RUN chown bwen:bwen -R /gui-app

WORKDIR /home/bwen

ENV USER=bwen
ENV HOME=/home/bwen
ENV PATH=/home/bwen/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/bwen/bin


USER bwen
ENTRYPOINT [ "libreoffice" ]
