# x86_64_qemu_defconfig

This configuration file is used to define the build settings for a specific project targeting the x86_64 architecture in the QEMU environment.

## Build Configuration

- `BR2_x86_nocona=y`: Specifies the target architecture as x86_64 Nocona.
- `BR2_KERNEL_HEADERS_4_15=y`: Enables the usage of Linux kernel headers version 4.15.
- `BR2_TOOLCHAIN_BUILDROOT_WCHAR=y`: Enables support for wide characters in the buildroot toolchain.
- `BR2_ROOTFS_OVERLAY="../base_external/rootfs-overlay"`: Path to the root filesystem overlay directory. A root filesystem overlay provides additional files and directories that are added to the generated root filesystem during the build process.
- `BR2_ROOTFS_POST_IMAGE_SCRIPT="../base_external/scripts/post-image.sh"`: Specifies the post-image script to be executed after generating the root file system image.
- `BR2_LINUX_KERNEL=y`: Enables the usage of the Linux kernel.
- `BR2_LINUX_KERNEL_USE_ARCH_DEFAULT_CONFIG=y`: Uses the default configuration for the selected architecture.
- `BR2_LINUX_KERNEL_INSTALL_TARGET=y`: Installs the Linux kernel image to the target system.
- `BR2_PACKAGE_OPENSSH=y`: This line enables the OpenSSH package in the build. OpenSSH is a suite of secure networking utilities that provides secure remote login, file transfer, and tunneling capabilities. Enabling this option allows the inclusion of OpenSSH in the generated root filesystem.
- `BR2_TARGET_ROOTFS_EXT2=y`: Builds the root file system as an EXT2 file system.
- `BR2_TARGET_GRUB2=y`: Enables the usage of GRUB2 as the bootloader.
- `BR2_PACKAGE_HOST_GENIMAGE=y`: Enables the inclusion of the genimage package for generating disk images.

## Usage

To build the project using this configuration, run the following command:
```shell
make x86_64_qemu_defconfig
make
```