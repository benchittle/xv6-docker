# xv6-docker

Docker image for compiling and running xv6 in a container.

---
## Fork Changes
This repo is a fork of https://github.com/jrodal98/xv6-docker. It has been modified to use [MIT's xv6 repo (the x86 version)](https://github.com/mit-pdos/xv6-public) (the original repo uses [this clone](https://github.com/uva-reiss-cs4414/xv6/tree/67e506b2f4d1a32e3ea5e209e822d1991bff0d9c))

I also added the `start.sh` convenience script to start the Docker daemon if it doesn't exist and run xv6. It can be used after step 3 below.

The rest of the README is untouched, other than an updated `git clone` URL.

---

## "Installation"

1) Recursively clone this repository

    `git clone --recurse-submodules https://github.com/benchittle/xv6-docker`

2) Enter the `xv6-docker` directory

    `cd xv6-docker`

3) Build the docker image

    `./xv6-container build`

## Usage

* To run `qemu-nox`, use:

    `./xv6-container`
* To run a bash shell inside container, use:

    `./xv6-container bash`

* Debug mode (not actually tested yet, pretty sure it won't work)

    `./xv6-container gdb`


### Troubleshooting

* If you get a permission denied error, run `chmod +x xv6-container`.
* Based on the way xv6-container is written, you must be in the xv6-docker directory for this to work (i.e., you can't do `../xv6-container` or `/foo/bar/xv6-container`)

* Based on the way debugging xv6 seems to work, my currently solution for debug mode is flawed.  Until I get around to fixing it, do something like this instead:

```
./xv6-container bash
tmux
```
Then, use tmux to get two terminal windows, one of which will run xv6, one of which will run gdb.  I'll probably get around to automating this eventually.


