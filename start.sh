!/bin/bash

if ! systemctl is-active docker.service; then
    systemctl start docker
fi

./xv6-container
