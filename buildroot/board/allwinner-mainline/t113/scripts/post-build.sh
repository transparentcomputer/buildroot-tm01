#!/bin/sh

MKIMAGE=$HOST_DIR/bin/mkimage
BOOT_CMD="board/transparent/tm01-mainline/boot.cmd"

# mkimage -C none -A arm -T script -d boot.cmd boot.scr
${MKIMAGE} -C none -A arm -T script -d ${BOOT_CMD} ${BINARIES_DIR}/boot.scr
