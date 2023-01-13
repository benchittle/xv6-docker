!/bin/bash
if which systemctl; then
    if ! systemctl is-active docker.service; then
        systemctl start docker
    fi
else
    echo "'systemctl' command not found. If you get the error 'Cannot connect to the Docker daemon', you'll have to manually enable the daemon"
fi

./xv6-container
