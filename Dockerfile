FROM ubuntu:latest

RUN set -x && \
        apt update -y -qq && \
        apt upgrade -y -qq --no-install-recommends && \
        apt install -y -qq \
        build-essential \
        gdb \
        gcc-multilib \
        gdb-multiarch \
        tmux \
        qemu-system

RUN adduser xv6user
USER xv6user
WORKDIR /home/xv6user/xv6-public/
CMD ["/bin/bash"]
