# Intro

This is my working config for [CLOVER][Clover] of Hackintosh (Yoseminte 10.10).
My Hack specs:

![My hackintosh specs][System Info]

* Clover r3241
* Intel i5-4570 with HD4600
* Gigabyte GA-H97-D3H (Clover identify mobo as H97-D3H-CF)
* Gigabyte HD6870 OC 1GB (UEFI GOP F6 bios version)
* 16GB (2 × 8GB) RAM Curcial Balistix Sport
* SiliconPower S70 120GB - OSX
* Samsung 840 EVO 120GB - Windows 8.1
* Segate Baracuda 7200.14 1TB SATA III

## In BIOS

1. Intel Virtualization Technology (Vanderpool Technology, Vd-T) - **Disabled**
2. SATA Mode - **AHCI**

  *Or you can use [my BIOS settings][BIOS-Setup] profile.*

# What working

* UEFI boot, Fast boot (Ultra fast) - in BIOS
* Sound (5.1, mic, front panel headphones) with [toleda/audio_CloverALC][CloverALC] and [EADP Codec Commander v2.4.0][EADP] (fix audio after sleep)
* Sleep/Wake
* [Boot Windows 8.1][Windows Boot] from `System preferences` and CLOVER

# Issues
On 4 May 2015 I recieved an UEFI GOP Ready bios for my GV-R687OC-1GD. But [this][R687OGD.F6] BIOS has some issues, as glitching when GPU is Idle (the trouble is very low core and memory clocks). And for resolve this glitching I use [RBE][RBE] for adjust Core and Memory clocks to higer values. And the result of my work is [fixed UEFI GOP][MOD_R687OGD.F6] ready BIOS for GV-R687OC-1GD with clocks of GV-R687SO-1GD.

[EADP]: https://applelife.ru/threads/eapd-codec-commander.41696/
[CloverALC]: https://github.com/toleda/audio_CloverALC
[Clover]: http://sourceforge.net/projects/cloverefiboot/
[Windows Boot]: ./Screenshots/Bootable_Windows_from_OSX.png
[System Info]: ./Screenshots/System_Info.png
[R687OGD.F6]: ./GV-R687OC-1GD/R687OGD.F6
[MOD_R687OGD.F6]: ./GV-R687OC-1GD/MOD_R687OGD.F6
[RBE]: http://www.techpowerup.com/rbe/
[BIOS-Setup]: ./BIOS/BIOS-Setup.bin
