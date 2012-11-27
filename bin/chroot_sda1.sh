#!/bin/bash

sudo mount /dev/sda1 /mnt
sudo chroot /mnt
sudo mount /dev/sda2 /mnt/home
sudo chroot /mnt
for i in /dev /dev/pts /proc /sys; do sudo mount -B $i /mnt$i; done
sudo chroot /mnt
