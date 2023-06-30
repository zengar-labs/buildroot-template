# Buildroot Base Project Template

This project template serves as a starting point for buildroot-based projects. It utilizes a br2-external configuration file storage and includes the official buildroot repository as a git submodule. Convenient scripts are provided to simplify the build process, save configurations, and launch the build using qemu.

## Installing Dependencies

To install the necessary dependencies, execute the `install_dependencies.sh` script. This script is designed to work on Unix-like or the vagrant container mentioned in the [Buildroot Manual](https://buildroot.org/downloads/manual/manual.html) startup page.

## Building

To build the image, run the `build.sh` script. Currently, this script is configured to use the x86_64 default build target. The configuration file (`buildroot/.config`) will only be updated if it does not exist. If you pull changes to the configuration, make sure to delete the `buildroot/.config` file before running the build script to trigger a complete rebuild.

## Starting QEMU

It's recommended to open a new [screen](https://www.gnu.org/software/screen/) session, such as `screen -S qemu`, before starting QEMU. From within this screen session, execute the `start_qemu.sh` script. To detach from the screen session, use the key combination `Ctrl-a d`. You can reconnect to this screen later using `screen -r qemu`. To stop the QEMU target, use the command `pkill qemu`.

## Saving Configurations

Whenever you make changes to the buildroot configuration files, run the `save_configs.sh` script to export these configurations to the `br2-external` tree for committing.

Feel free to customize this project template according to your specific requirements and refer to the buildroot documentation for further guidance. 

## Table of documentation Contents

- [genimage.cfg](docs/genimage.md)
- [linux_kernel_defconfig](docs/linux_kernel_defconfig.md)
- [x86_64_qemu_defconfig](docs/x86_64_qemu_defconfig.md)
- [interfaces](docs/interfaces.md)
- [sshd_config](docs/ssh_server.md)

:star: Happy building!