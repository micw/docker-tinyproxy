FROM debian:9-slim

RUN apt-get update && apt-get -y --no-install-recommends install bash tinyproxy && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin

ADD tinyproxy.sh /usr/local/bin/tinyproxy.sh

CMD /usr/local/bin/tinyproxy.sh
ENV PORT=8888 PERFER_IPV4=false ALLOW_IPS="0.0.0.0/0"
