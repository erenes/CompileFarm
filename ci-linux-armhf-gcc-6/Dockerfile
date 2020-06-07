FROM openttd/base:latest

RUN dpkg --add-architecture armhf && apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && \
    apt-get install -y --no-install-recommends \
    binutils-arm-linux-gnueabi \
    g++-arm-linux-gnueabihf=4:6.* \
    gcc-arm-linux-gnueabihf=4:6.* 
RUN apt-get install -y --no-install-recommends \
    libicu-dev:armhf \
    libc6-dev:armhf \
    #libfile-fcntllock-perl:armhf \
    #libfontconfig-dev:armhf \
    liblzma-dev:armhf \
    liblzo2-dev:armhf \
    libsdl1.2-dev:armhf \
    libsdl2-dev:armhf \
    libxdg-basedir-dev:armhf \
    && rm -rf /var/lib/apt/lists/*

# Install openttd-opengfx, so we can easier run the regression tests
RUN apt-get update && apt-get install -y --no-install-recommends \
    openttd-opengfx \
    && rm -rf /var/lib/apt/lists/*

COPY files/run.sh /usr/bin/

WORKDIR /workdir/source

ENTRYPOINT ["run.sh"]
CMD []
