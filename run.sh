#!/bin/sh

docker run -t -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v="${HOME}/:/root/external_home" meshmixer_oss_driver

