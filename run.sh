#!/bin/sh

docker run -ti -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" meshmixer_oss_driver
