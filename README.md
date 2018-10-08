# Intro

This is my working config for [CLOVER][Clover] of Hackintosh (Mojave 10.14)

My Hack specs:

![My hackintosh specs][System Info]

* Clover r4674
* Intel i7-4770S with HD4600
* Gigabyte GA-H97M-D3H and GA-H97-D3H (Clover OEM identify mobo as H97M-D3H and H97-D3H-CF)
* 16GB (2 × 8GB) RAM Curcial Balistix Sport
* Realtek 8112AU USB WiFi dongle
* SATA Samsung 840 EVO 120GB

## In BIOS

1. SATA Mode - **AHCI**
1. XHCI Mode - **Enabled**
1. XHCI Hand-off - **Enabled**
1. EHCI Hand-off - **Disabled**

## The first of all you must complete you Clover config

1. Open in [Cloud Clover Editor][CCE] your `config.plist` from this repo
2. Go to `SMBIOS` section and select an approximate Mac model (I'm use 14,3 by identical `CPU 4770S` and GPU vendor)
3. Then go to first menu item `Cloud Clover Editor` and press `Download`
4. Rename downloaded file to `SMBIOS.plist` and put to your `OEM` folder

## Clover installation

1. I'm using only `UEFI` boot, in Clover installation check this option.
2. In drivers section, make sure, that `AptioMemoryFix-64.efi` has checkbox.
3. Did't install any `*SMC*` drivers I use [VirtualSMC][VirtualSMC] instead.

## What working

* QSV
* Audio (5.1, mic, front panel headphones, HDMI HD4600) with [AppleALC][AppleALC]
* Sleep/Wake
* USB - All ports exept one whitch close to LAN port has only USB2.0 interface, you can configure this by editing `Legacy_USB3.kext`

## What under hood?

* `Lilu` - a great patcher [Lilu][Lilu]
* `Audio` - [AppleALC][AppleALC]
* `IGPU & GPU` - [WhateverGreen][WhateverGreen]
* `SMC` - [VirtualSMC][VirtualSMC]

[Z370]: https://github.com/korzhyk/CLOVER-Z370-AORUS-Gaming-7
[AppleALC]: https://github.com/acidanthera/AppleALC
[WhateverGreen]: https://github.com/acidanthera/WhateverGreen
[VirtualSMC]: https://github.com/acidanthera/VirtualSMC
[Lilu]: https://github.com/acidanthera/Lilu
[Clover]: http://sourceforge.net/projects/cloverefiboot/
[System Info]: ./misc/Screenshots/System_Info.png
[CCE]: http://cloudclovereditor.altervista.org/
