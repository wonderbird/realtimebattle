# RealTimeBattle

[![Build Status Badge](https://github.com/wonderbird/realtimebattle/workflows/Build/badge.svg)](https://github.com/wonderbird/realtimebattle/actions?query=workflow%3A%22Build%22)

RealTimeBattle is a programming game for Unix, in which robots controlled by programs are fighting each other. The goal is to destroy the enemies, using the radar to examine the environment and the cannon to shoot.

This repository is a fork of the contents of [RealTimeBattle-1.0.8-Ext.tar.gz](https://sourceforge.net/projects/realtimebattle/files/RealTimeBattle-1.0.x/RealTimeBattle%201.0.8/) ([SHA256 sum below](#origin-of-this-fork)). Please find more details in the [original README](README) and on the official [RealTimeBattle project homepage](http://realtimebattle.sourceforge.net/).


## Thanks

Many thanks to all the [AUTHORS](AUTHORS) who created and contributed to this project ❤️.


## Development Quickstart

On your computer build and run the development and test docker container:

```bash
docker build -t rtb-dev:latest .
docker run --rm -p 6080:80 -v "$PWD:/root/realtimebattle" -v /dev/shm:/dev/shm --name realtimebattle rtb-dev:latest
```

Now connect your browser to the HTML5 VNC session at http://localhost:6080 . Open a Terminal window: From the bottom left menu select System Tools &rarr; LXTerminal.

Build the application:

```bash
cd realtimebattle
./configure
make
```

Note that the `./configure` command is required only once for each freshly built container image. From now on you only need to call `make` after you changed some RealTimeBattle code.

Run the RealTimeBattle UI with a custom configuration:

```bash
./src/realtimebattle --option_file "$PWD/rtbrc"
```

Realtimebattle will use the configuration for developers stored in the [rtbrc](rtbrc) file. When you start developing a new robot, please adjust the configuration property `Robot search path:` to match the directory of your new robot. A good starting point is `/root/realtimebattle/Robots/rotate_and_fire`. For more details, refer to the information in the [Documentation](Documentation) folder.

More detailed architecture and development information regarding the RealTimeBattle platform are stored in the [docs](docs) folder.


## Links

* [RealTimeBattle](http://realtimebattle.sourceforge.net/) - Official project homepage.
* [RTB-Team Project](http://rtb-team.sourceforge.net/) - Strategies allowing teams of robots communicate efficiently.


## Origin of This Fork

Details of the source file, from which this repository has been created:

| Name | Modified | Size | SHA256 sum |
| ---- | -------- | ---- | ---------- |
|[RealTimeBattle-1.0.8-Ext.tar.gz](https://sourceforge.net/projects/realtimebattle/files/RealTimeBattle-1.0.x/RealTimeBattle%201.0.8/) | 2005-10-15 | 1.3 MB | 11a29720af3e7173f1afcc6b85b83a33015bdeadc3528874a504975024d86aaa |
