# meshmixer_docker_oss
Run meshmixer in a docker image using the generic open source drivers (p.e. intel) for opengl

The code is based on https://github.com/halfdane/meshmixer_docker_oss and uses many parts of http://meshmixer.com/forum/index.php?topic=2698.msg6629#msg6629 and following posts.

# Root access
Constantly entering a root password for reg ularly used commands is a security issue in my opinion, since it desensitizes users from the possible dangers connected to it.
Consequently I configured my docker installation to run as non-root: https://docs.docker.com/engine/installation/linux/ubuntulinux/#create-a-docker-group

If you do not want this you will have to run the scripts mentioned below as root. Do this by adding `sudo ` before the command.

# Build
Run the included build script:
  ./build.sh

# Run
Run the included run script:
  ./run.sh
