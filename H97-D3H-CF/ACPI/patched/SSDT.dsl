
DefinitionBlock ("", "SSDT", 2, "APPLE", "SsdtHACK", 0x00001000)
{

    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.EHC1, DeviceObj)
    External (_SB_.PCI0.EHC2, DeviceObj)
    External (_SB_.PCI0.GLAN, DeviceObj)
    External (_SB_.PCI0.HDAU, DeviceObj)
    External (_SB_.PCI0.HDEF, DeviceObj)
    External (_SB_.PCI0.IGPU, DeviceObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP._ADR, IntObj)
    External (_SB_.PCI0.SBUS, DeviceObj)
    External (_SB_.PCI0.XHC_, DeviceObj)

    Scope (\)
    {
        Method (OSDW, 0, NotSerialized)
        {
            If (CondRefOf (_OSI, Local0))
            {
                If (_OSI ("Darwin"))
                {
                    Return (One)
                }
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)
        }

        Scope (\_SB.PCI0.EHC1)
        {
            Method (_DSM, 4, NotSerialized)
            {
                Store (Package (0x15)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Intel EHCI Controller", 
                        "model", 
                        Buffer (0x37)
                        {
                            "Intel 9 Series Chipset Family USB EHCI Host Controller"
                        }, 

                        "device_type", 
                        Buffer (0x0F)
                        {
                            "USB Controller"
                        }, 

                        "AAPL,current-available", 
                        0x0834, 
                        "AAPL,current-extra", 
                        0x0A8C, 
                        "AAPL,current-in-sleep", 
                        0x0834, 
                        "AAPL,current-extra-in-sleep", 
                        0x0834, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0A8C, 
                        "AAPL,device-internal", 
                        0x02, 
                        Buffer (One)
                        {
                             0x00
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Scope (\_SB.PCI0.EHC2)
        {
            Method (_DSM, 4, NotSerialized)
            {
                Store (Package (0x15)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Intel EHCI Controller", 
                        "model", 
                        Buffer (0x37)
                        {
                            "Intel 9 Series Chipset Family USB EHCI Host Controller"
                        }, 

                        "device_type", 
                        Buffer (0x0F)
                        {
                            "USB Controller"
                        }, 

                        "AAPL,current-available", 
                        0x0834, 
                        "AAPL,current-extra", 
                        0x0A8C, 
                        "AAPL,current-in-sleep", 
                        0x0834, 
                        "AAPL,current-extra-in-sleep", 
                        0x0834, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0A8C, 
                        "AAPL,device-internal", 
                        0x02, 
                        Buffer (One)
                        {
                             0x00
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Scope (\_SB.PCI0.XHC)
        {
            Method (_DSM, 4, NotSerialized)
            {
                Store (Package (0x15)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Intel XHCI Controller", 
                        "model", 
                        Buffer (0x37)
                        {
                            "Intel 9 Series Chipset Family USB xHCI Host Controller"
                        }, 

                        "device_type", 
                        Buffer (0x0F)
                        {
                            "USB Controller"
                        }, 

                        "AAPL,current-available", 
                        0x0834, 
                        "AAPL,current-extra", 
                        0x0A8C, 
                        "AAPL,current-in-sleep", 
                        0x03E8, 
                        "AAPL,current-extra-in-sleep", 
                        0x0834, 
                        "AAPL,max-port-current-in-sleep", 
                        0x0A8C, 
                        "AAPL,device-internal", 
                        0x02, 
                        Buffer (One)
                        {
                             0x00
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Scope (\_SB.PCI0.LPCB)
        {
            Method (_DSM, 4, NotSerialized)
            {
                Store (Package (0x0A)
                    {
                        "device-id", 
                        Buffer (0x04)
                        {
                             0x44, 0x8C, 0x00, 0x00
                        }, 

                        "IOName", 
                        Buffer (0x0D)
                        {
                            "pci8086,8c44"
                        }, 

                        "name", 
                        Buffer (0x0D)
                        {
                            "pci8086,8c44"
                        }, 

                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0x70, 0x72, 0x00, 0x00
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Scope (\_SB.PCI0.SBUS)
        {
            Device (BUS0)
            {
                Name (_CID, "smbus")
                Name (_ADR, Zero)
                Device (BLC0)
                {
                    Name (_ADR, Zero)
                    Name (_CID, "smbus-blc")
                    Method (_DSM, 4, NotSerialized)
                    {
                        Store (Package (0x08)
                            {
                                "address", 
                                0x2C, 
                                "command", 
                                Zero, 
                                "refnum", 
                                Zero, 
                                "type", 
                                0x49324300
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (OSDW ())
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }
                }
            }
        }

        Scope (\_SB.PCI0.GLAN)
        {
            Method (_DSM, 4, NotSerialized)
            {
                Store (Package (0x0C)
                    {
                        "AAPL,slot-name", 
                        "Built In", 
                        "name", 
                        "Intel Ethernet Controller", 
                        "model", 
                        "Intel I217-V Gigabit Network Controller", 
                        "device_type", 
                        Buffer (0x14)
                        {
                            "Ethernet Controller"
                        }, 

                        "built-in", 
                        Buffer (One)
                        {
                             0x01
                        }, 

                        "location", 
                        Buffer (0x02)
                        {
                            "1"
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Scope (\_SB.PCI0.IGPU)
        {
            Method (_DSM, 4, NotSerialized)
            {
                Store (Package (0x04)
                    {
                        "AAPL,ig-platform-id", 
                        Buffer (0x04)
                        {
                             0x03, 0x00, 0x22, 0x0D
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

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
            Method (_DSM, 4, NotSerialized)
            {
                Store (Package (0x04)
                    {
                        "layout-id", 
                        Buffer (0x04)
                        {
                             0x07, 0x00, 0x00, 0x00
                        }, 

                        "PinConfigurations", 
                        Buffer (Zero) {}
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Scope (\_SB.PCI0.HDAU)
        {
            Method (_DSM, 4, NotSerialized)
            {
                Store (Package (0x04)
                    {
                        "layout-id", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00
                        }, 

                        "hda-gfx", 
                        Buffer (0x0A)
                        {
                            "onboard-1"
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }
        }

        Scope (\_SB.PCI0.PEG0)
        {
            Device (GFX0)
            {
                Name (_ADR, Zero)
                Name (_SUN, One)
                Method (_INI, 0, NotSerialized)
                {
                    Store (0x0F, \_SB.PCI0.PEG0.PEGP._ADR)
                }

                Method (_DSM, 4, NotSerialized)
                {
                    Store (Package (0x0E)
                        {
                            "@0,connector-type", 
                            Buffer (0x04)
                            {
                                 0x00, 0x08, 0x00, 0x00
                            }, 

                            "@1,connector-type", 
                            Buffer (0x04)
                            {
                                 0x00, 0x08, 0x00, 0x00
                            }, 

                            "@2,connector-type", 
                            Buffer (0x04)
                            {
                                 0x00, 0x08, 0x00, 0x00
                            }, 

                            "@3,connector-type", 
                            Buffer (0x04)
                            {
                                 0x00, 0x08, 0x00, 0x00
                            }, 

                            "@4,connector-type", 
                            Buffer (0x04)
                            {
                                 0x00, 0x08, 0x00, 0x00
                            }, 

                            "@5,connector-type", 
                            Buffer (0x04)
                            {
                                 0x00, 0x08, 0x00, 0x00
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
                Name (_ADR, One)
                Method (_DSM, 4, NotSerialized)
                {
                    Store (Package (0x04)
                        {
                            "layout-id", 
                            Buffer (0x04)
                            {
                                 0x01, 0x00, 0x00, 0x00
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

    Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                        {
                             0x03
                        }, Arg4)
                    Return (One)
                }

                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }

        Store (Buffer (One)
            {
                 0x00
            }, Arg4)
        Return (Zero)
    }
}
