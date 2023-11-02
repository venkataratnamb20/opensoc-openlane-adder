FROM ghdl/ghdl:ubuntu22-llvm-11
# FROM ubuntu:22.04

RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get install -y python3 \
  && rm -rf /var/lib/apt/lists/*
# apt-get install python3-venv, and pip: apt-get install python3-pip
# RUN useradd -ms /bin/bash ghdluser

# USER ghdluser

# RUN sudo mkdir -p /usr/src/app/openlane-soc && cd /usr/src/app/openlane-soc
WORKDIR /usr/src/app/openlane-soc
COPY . .

CMD python --version
