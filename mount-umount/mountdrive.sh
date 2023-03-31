#!/bin/bash

LOC=usb1

sudo mount -v /dev/sdb1 /mnt/$LOC
ln -s /mnt/$LOC $HOME/$LOC
