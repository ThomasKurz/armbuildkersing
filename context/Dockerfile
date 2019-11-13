FROM ubuntu:18.04
RUN apt-get update

RUN apt-get install -y protobuf-compiler libprotobuf-dev libprotoc-dev
RUN apt-get install -y build-essential automake libtool autoconf
RUN apt-get install -y gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
RUN apt-get install -y git-core pkg-config

RUN mkdir /kersing
RUN cd /kersing && git clone https://github.com/kersing/packet_forwarder.git
RUN cd /kersing && git clone https://github.com/kersing/lora_gateway.git
RUN cd /kersing && git clone https://github.com/kersing/paho.mqtt.embedded-c.git
RUN cd /kersing && git clone https://github.com/kersing/ttn-gateway-connector.git
RUN cd /kersing && git clone https://github.com/kersing/protobuf-c.git
RUN cd /kersing && git clone https://github.com/google/protobuf.git


COPY build_libloragw.sh /kersing/
COPY library.cfg /kersing/lora_gateway/libloragw/library.cfg
RUN cd /kersing && bash build_libloragw.sh

COPY build_libprotobuf.sh  /kersing/
RUN cd /kersing && bash build_libprotobuf.sh

COPY build_pahomqtt.sh  /kersing/
RUN cd /kersing && bash build_pahomqtt.sh

COPY build_ttngwconn.sh /kersing/
RUN cd /kersing && bash build_ttngwconn.sh

COPY build_mppktfwd.sh /kersing/
RUN cd /kersing && bash build_mppktfwd.sh
