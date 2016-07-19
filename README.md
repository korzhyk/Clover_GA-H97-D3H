# Intro

This is my working config for [CLOVER][Clover] of Hackintosh (El Capitan 10.11.6).
My Hack specs:

![My hackintosh specs][System Info]

* Clover r3438
* Intel i7-4770S with HD4600
* Gigabyte GA-H97-D3H (Clover identify mobo as H97-D3H-CF)
* Zotac GTX 980 ti AMP! 6GB (nVidia web driver 346.03.06f01)
* 16GB (2 × 8GB) RAM Curcial Balistix Sport
* SiliconPower S70 120GB - OSX
* Samsung 840 EVO 120GB - Windows 10
* Segate Baracuda 7200.14 1TB SATA III

## In BIOS

1. Intel Virtualization Technology (Vanderpool Technology, Vd-T) - **Disabled**
2. SATA Mode - **AHCI**
3. XHCI Hand-off - **Enabled**

*Or you can use [my BIOS settings][BIOS-Setup] profile.*

# What working

* UEFI boot, Fast boot (Ultra fast) - in BIOS
* Audio (5.1, mic, front panel headphones, HDMI HD4600 & GTX980ti) with [vit9696/AppleALC][AppleALC] and [EADP Codec Commander][EADP] (fix audio after sleep)
* Sleep/Wake
* [Boot Windows 10][Windows Boot] from `System preferences` and CLOVER

# CodecCommander

CodecCommander **must** be installed in /S/L/E!!1

[EADP]: https://applelife.ru/threads/eapd-codec-commander.41696/
[AppleALC]: https://github.com/vit9696/AppleALC
[Clover]: http://sourceforge.net/projects/cloverefiboot/
[Windows Boot]: ./Screenshots/Bootable_Windows_from_OSX.png
[System Info]: ./Screenshots/System_Info.png
[BIOS-Setup]: ./BIOS/BIOS-Setup.bin
