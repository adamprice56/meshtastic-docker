FROM ubuntu:20.04
COPY . /meshtastic
RUN apt-get update
RUN apt-get install python3-pip python-is-python3 -y
RUN pip3 install --upgrade pytap2
RUN pip3 install /meshtastic/easy_table-0.0.4.tar.gz
RUN pip3 install --upgrade meshtastic
RUN meshtastic --info
