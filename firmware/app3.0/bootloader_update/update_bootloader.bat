:: Green LED lights up when bootloader update is complete
:: Switch 'OFF' and 'ON' the board after the update is done

@echo off
..\..\..\util\app_switch usb_dfu_bl
..\..\..\util\usb-dfu\dfu-util -d 0x108c:0xab3d -a RAM -D usb_dfu_bootloader.pkg -R
pause
 