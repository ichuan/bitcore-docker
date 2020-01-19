FROM ubuntu:19.04

RUN mkdir -p /opt/coin
WORKDIR /opt/coin

EXPOSE 8556

RUN apt-get update && apt-get install -y wget python
RUN wget https://github.com/LIMXTEC/BitCore/releases/download/0.15.2.2/bitcore-linux-tatic-libstdc++.tar.xz -O - | tar -xJf -

# cleanup
RUN apt remove -y wget && apt autoremove -y && apt autoclean
RUN rm -rf /var/lib/apt/lists/* /opt/coin/{bitcore-qt,bitcore-tx}

VOLUME ["/opt/coin/data", "/opt/coin/coin.conf"]

ENTRYPOINT ["/opt/coin/bitcored"]
CMD ["-conf=/opt/coin/coin.conf"]
