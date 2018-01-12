FROM maartje/desktop-base

ENV version=1.8.5

RUN apt-get update && apt-get install -y xz-utils libftdi1

RUN wget -O arduino.tar.xz https://downloads.arduino.cc/arduino-${version}-linux64.tar.xz && \
    tar -xJf arduino.tar.xz && rm -f arduino.tar.xz

RUN cd arduino-${version} && ./install.sh

CMD /arduino-${version}/arduino
