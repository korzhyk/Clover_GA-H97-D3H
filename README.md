# Intro

This is my working config for [CLOVER][Clover] of Hackintosh (Mojave 10.14)

My Hack specs:

![My hackintosh specs][System Info]

* Clover r4674
* Intel i7-4770S with HD4600
* Gigabyte GA-H97M-D3H  and GA-H97-D3H (Clover OEM identify mobo as H97M-D3H and H97-D3H-CF)
* ~~EVGA GTX1080 FTW2 8GB~~ currently in another system [CLOVER-Z370-AORUS-Gaming-7][https://github.com/korzhyk/CLOVER-Z370-AORUS-Gaming-7]
* 16GB (2 × 8GB) RAM Curcial Balistix Sport
* ~~Apple Broadcom BCM94360CD 802.11ac WiFi Bluetooth 4.0 Mini PCI-E~~ - USB wifi dongle on realtek
* SATA Samsung 840 EVO 120GB macOS

## In BIOS

1. SATA Mode - **AHCI**
2. XHCI Hand-off - **Enabled**

## The first of all you must complete you Clover config

1. Open in [Cloud Clover Editor][CCE] your `config.plist` from this repo
2. Go to `SMBIOS` section and select an approximate Mac model (I'm use 14,3 by identical `CPU 4770S` and GPU vendor)
3. Then go to first menu item `Cloud Clover Editor` and press `Download`
4. Rename downloaded file to `SMBIOS.plist` and put it to your `OEM` folder and leave only `SMBIOS` section

## Clover installation

1. I'm using only `UEFI` boot, in Clover installation check this option.
2. In drivers section, make sure, that `AptioMemoryFix.efi` has checkbox
3. Do not install any `*SMC*` drivers, I use `VirtualSMC`
4. That's all!

## What working

* Audio (5.1, mic, front panel headphones, HDMI HD4600 & GTX1080) with [AppleALC][AppleALC] & [WhateverGreen][WhateverGreen]
* Sleep/Wake
* LAN with `AppleIntelE1000e.kext` for `H97-D3H-CF` and [RealtekRTL8111.kext][RealtekRTL8111] for `H97M-D3H`
* QSV

[RealtekRTL8111]: https://github.com/Mieze/RTL8111_driver_for_OS_X
[WhateverGreen]: https://github.com/acidanthera/WhateverGreen
[AppleALC]: https://github.com/acidanthera/AppleALC
[Lilu]: https://github.com/vit9696/Lilu
[Clover]: https://sourceforge.net/projects/cloverefiboot/
[Windows Boot]: ./misc/Screenshots/Bootable_Windows_from_OSX.png
[System Info]: ./misc/Screenshots/System_Info.png
[CCE]: http://cloudclovereditor.altervista.org/
