# Intro

This is my working config for [CLOVER][Clover] of Hackintosh (Yoseminte 10.10).
My Hack specs:

![My hackintosh specs][System Info]

* Clover r3193
* Intel i5-4570 with HD4600
* Gigabyte GA-H97-D3H (Clover identify mobo as H97-D3H-CF)
* Gigabyte HD6870 OC 1GB with UEFI BIOS (patched original F5 bios)
* 16GB (2 × 8GB) RAM Curcial Balistix Sport
* SiliconPower S70 120GB - OSX
* Samsung 840 EVO 120GB - Windows 8.1
* Segate Baracuda 7200.14 1TB SATA III

## In BIOS

1. Intel Virtualization Technology (Vanderpool Technology, Vd-T) - **Disabled**
2. SATA Mode - **AHCI**

# What working

* UEFI boot, Fast boot (Ultra fast) - in BIOS
* Sound (5.1, mic, front panel headphones) with [toleda/audio_CloverALC][CloverALC] and [EADP Codec Commander][EADP] (fix audio after sleep)
* Sleep/Wake
* [Boot Windows 8.1][Windows Boot] from `System preferences` and CLOVER

[EADP]: https://applelife.ru/threads/eapd-codec-commander.41696/
[CloverALC]: https://github.com/toleda/audio_CloverALC
[Clover]: http://sourceforge.net/projects/cloverefiboot/
[Windows Boot]: ./Screenshots/Bootable_Windows_from_OSX.png
[System Info]: ./Screenshots/System_Info.png
