setenv bootargs mem=128M cma=72M console=ttyS0,115200 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait ro
setenv bootcmd fatload mmc 0:1 0x4fc00000 boot.scr; fatload mmc 0:1 0x45000000 zImage; fatload mmc 0:1 0x41800000 sun8i-t113-transparent-tm01.dtb; bootz 0x45000000 - 0x41800000

# mkimage -C none -A arm -T script -d boot.cmd boot.scr
