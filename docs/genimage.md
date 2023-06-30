# genimage.cfg

This script is used to generate a disk image for a specific project.

## Image Configuration

The image is defined as "project.hdimg".

### HDImage Section

The `hdimage` section specifies the characteristics of the disk image.

- `align = 1M`: Sets the alignment of partitions within the image to 1 MB.
- `disk-signature = 0xFOCABEBA`: Sets the disk signature to the specified value.

### Boot Partition

The `boot` partition is responsible for booting the system.

- `in-partition-table = "no"`: Excludes this partition from the partition table.
- `image = "../host/lib/grub/i386-pc/boot.img"`: Specifies the boot image to use.
- `offset = 0`: Sets the partition offset to 0.
- `size = 512`: Sets the partition size to 512 bytes.

### GRUB Partition

The `grub` partition contains the GRUB bootloader.

- `in-partition-table = "no"`: Excludes this partition from the partition table.
- `image = "grub.img"`: Specifies the GRUB image to use.
- `offset = 512`: Sets the partition offset to 512 bytes.

### Root Partition

The `root` partition contains the root file system.

- `image = "rootfs.ext2"`: Specifies the root file system image.
- `partition-type = 0x83`: Sets the partition type to 0x83, commonly used for Linux file system partitions.

## Usage

To generate the disk image, run the following command:

`genimage -c genimage.cfg`
> For more information on using genimage, refer to the genimage documentation.
