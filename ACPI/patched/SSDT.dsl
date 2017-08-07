/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20140926-64 [Oct 24 2014]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembly of iASL4S7gVo.aml, Fri Mar 10 10:53:10 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001DF (479)
 *     Revision         0x02
 *     Checksum         0x8C
 *     OEM ID           "APPLE"
 *     OEM Table ID     "SsdtHACK"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140926 (538183974)
 */
DefinitionBlock ("iASL4S7gVo.aml", "SSDT", 2, "APPLE", "SsdtHACK", 0x00001000)
{

    External (_SB.PCI0.HDEF, DeviceObj)
    External (_SB.PCI0.PEG0, DeviceObj)
    External (_SB.PCI0.PEG0.PEGP._ADR, IntObj)
    External (DTGP, MethodObj)    // 5 Arguments

    Scope (\_SB.PCI0.HDEF)
    {
        Name (RMCF, Package (0x02)
        {
            "CodecCommander", 
            Package (0x04)
            {
                "Update Nodes", 
                ">y", 
                "Sleep Nodes", 
                ">y"
            }
        })
    }

    Scope (\_SB.PCI0.PEG0)
    {
        Device (GFX0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_SUN, One)  // _SUN: Slot User Number
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (0x0F, \_SB.PCI0.PEG0.PEGP._ADR) /* External reference */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x0E)
                    {
                        "@0,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           /* .... */
                        }, 

                        "@1,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           /* .... */
                        }, 

                        "@2,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           /* .... */
                        }, 

                        "@3,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           /* .... */
                        }, 

                        "@4,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           /* .... */
                        }, 

                        "@5,connector-type", 
                        Buffer (0x04)
                        {
                             0x00, 0x08, 0x00, 0x00                           /* .... */
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Device (HDAU)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x04)
                    {
                        "layout-id", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                           /* .... */
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-2"
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }
    }
}

