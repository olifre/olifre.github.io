---
layout: default
title: Installing ArchLinux the opinionated way (WIP)
subtitle: Similar to official instructions, but with some opinionated decisions.
---

## {{ page.title }}
### {{ page.subtitle }}

## Warning: This is currently still work-in-progress!

These instructions follow the [official ArchLinux installation instructions](https://wiki.archlinux.org/title/Installation_guide), but divert in an opinionated way in some steps. Follow with caution, and only if you know what you are doing!

1. For partitioning, we use `gdisk`, we target the following layout:
   ```
   # gdisk /dev/nvme0n1
   
   Number  Start (sector)    End (sector)  Size       Code  Name
   1            2048         2099199   1024.0 MiB  EF00  EFI system partition
   2         2099200         4196351   1024.0 MiB  EA00  XBOOTLDR partition
   3         4196352      3907028991   1.8 TiB     8300  ArchLinux
   ```

2. Formatting:
   ```
   mkfs.fat -F 32 /dev/nvme0n1p1
   mkfs.ext4 /dev/nvme0n1p2
   #FIXME: add LUKS here!
   mkfs.btrfs -O block-group-tree /dev/nvme0n1p3
   ```

3. Setup BTRFS with separate volumes for `rootfs` and `home` for usage of `btrbk`:
   ```
   #FIXME: LUKS!
   mkdir /mnt/btrfs_pool
   mkdir /mnt/rootfs
   mount -t btrfs -o defaults,noatime,compress-force=zstd:6,ssd /dev/nvme0n1p3 /mnt/btrfs_pool
   btrfs subvol create /mnt/btrfs_pool/rootfs
   btrfs subvol create /mnt/btrfs_pool/home
   btrfs subvol create /mnt/btrfs_pool/nobackup
   mkdir /mnt/btrfs_pool/_btrbk_snap
   mount -t btrfs -o defaults,noatime,compress-force=zstd:6,ssd,subvol=rootfs /dev/nvme0n1p3 /mnt/rootfs
   btrfs subvolume set-default /mnt/rootfs
   mkdir /mnt/rootfs/home
   mount -t btrfs -o defaults,noatime,compress-force=zstd:6,ssd,subvol=home /dev/nvme0n1p3 /mnt/rootfs/home
   btrfs subvolume list /mnt/btrfs_pool
   mkdir /mnt/rootfs/efi
   mount /dev/nvme0n1p1 /mnt/rootfs/efi
   mkdir /mnt/rootfs/boot
   mount /dev/nvme0n1p2 /mnt/rootfs/boot
   ```

[back](../../)

