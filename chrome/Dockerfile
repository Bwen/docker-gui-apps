FROM debian

RUN apt-get update && apt-get install -y \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg \
	hicolor-icon-theme \
	libcanberra-gtk* \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	libpangox-1.0-0 \
	libpulse0 \
	libv4l-0 \
	fonts-symbola \
	libgtk-3.0 libx11-xcb1 libxss1 libnss3 libasound2 fonts-liberation libappindicator3-1 xdg-utils \
	--no-install-recommends

RUN curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \
	&& echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list

RUN apt-get update && apt-get install -y \
	google-chrome-stable \
	--no-install-recommends \
	&& apt-get purge --auto-remove -y curl \
	&& rm -rf /var/lib/apt/lists/*

RUN adduser --home /home/chrome --disabled-password chrome \
    && mkdir -p /home/chrome/Downloads \
    && mkdir -p /home/chrome/.local \
    && mkdir -p /home/chrome/.cache \
    && mkdir -p /data \
    && chown -R chrome:chrome /data \
    && chown -R chrome:chrome /home/chrome

USER chrome
CMD ["/opt/google/chrome/chrome", "--user-data-dir=/data"]
