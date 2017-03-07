# Intro

This is my working config for [CLOVER][Clover] of Hackintosh (El Capitan 10.11.6 & Sierra 10.12.3)

My Hack specs:

![My hackintosh specs][System Info]

* Clover r4035
* Intel i7-4770S with HD4600
* Gigabyte GA-H97-D3H (Clover OEM identify mobo as H97-D3H-CF)
* Zotac GTX 980 ti AMP! 6GB
* 16GB (2 × 8GB) RAM Curcial Balistix Sport
* Micon M600 512GB (32GB - 7% OverProvisioning, trimforce enable) - macOS
* Micon M600 512GB (32GB - 7% OverProvisioning, Momentum Cache) - Windows X
* Segate Baracuda 7200.14 1TB SATA III

## In BIOS

1. SATA Mode - **AHCI**
2. XHCI Hand-off - **Enabled**
3. ~~Intel Virtualization Technology (Vanderpool Technology, Vd-T) - **Disabled**~~ this option was omitted by droping `DMAR` table in Clover config.

## The first of all you must complete you Clover config

1. Open in [Cloud Clover Editor][CCE] your `config.plist` from this repo
2. Go to `SMBIOS` section and select an approximate Mac model (I'm use 14,3 by identical `CPU 4770S` and GPU vendor)
3. Then go to first menu item `Cloud Clover Editor` and press `Download`
4. Rename downloaded file to `config.plist` and put with replace to your `OEM` folder

## Clover installation

1. I'm using only `UEFI` boot, in Clover installation check this option.
2. In drivers section, make sure, that `OsxAptioFix2Drv-64.efi` has checkbox
3. That's all!

## What working

* UEFI boot, Fast boot (Ultra fast) - in BIOS
* Apple boot logo is in! Use [My moded BIOS][BIOS_MOD] for bios apple logo
* Audio (5.1, mic, front panel headphones, HDMI HD4600 & GTX980ti) with [vit9696/AppleALC][AppleALC] and [EADP Codec Commander][EADP] (fix audio after sleep)
* Sleep/Wake
* [Boot Windows 10][Windows Boot] from `System preferences` and CLOVER

## Lilu.kext, Shiki.kext and IntelGraphicsFixup.kext

For more information about `Lilu` follow this link [Lilu github][Lilu]


[EADP]: https://github.com/RehabMan/EAPD-Codec-Commander
[AppleALC]: https://github.com/vit9696/AppleALC
[Lilu]: https://github.com/vit9696/Lilu
[Clover]: http://sourceforge.net/projects/cloverefiboot/
[Windows Boot]: ./Screenshots/Bootable_Windows_from_OSX.png
[System Info]: ./Screenshots/System_Info.png
[BIOS_MOD]: ./BIOS/MOD_H97D3H.F6
[CCE]: http://cloudclovereditor.altervista.org/