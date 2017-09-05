#
###################################################
## Created by: Sarcastic Bastard of the Universe ##
###################################################

############################################################################################################################
## Script has been created to make a VMWare VM stealthy                                                                   ##
## This script has been designed in countering detection by the Indian Tech Scammers who rip off the naive and vulnerable ##
## Average age of tech scam victim: 60                                                                                    ##
## Average amount $773.00                                                                                                 ##
## Follow DEEVEEAAR's 24/7 live stream combating the Indian Tech scammers at https://www.youtube.com/watch?v=FqsXPbEqxUc  ##
## India and 99.999999% of Indians are cool people. It's ALL scammers we hate.                                            ##
## If you interpret this as racism or anything else in a negative fashion, you're one of the biggest morons on the planet ##
############################################################################################################################

#Changes VMware Pointing Device to HID-compliant Mouse - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\ACPI\VMW0003\4&1bd7f811&0" -Name "DeviceDesc" -Value "HID-compliant Mouse"

#Changes VMware Pointing Device to HID-compliant Mouse - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\HID\VID_0E0F&PID_0003&MI_00\8&1230c469&0&0000" -Name "DeviceDesc" -Value "PS2 Compatible Mouse"

#Changes VMware Pointing Device to Nvidia, Inc
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\HID\VID_0E0F&PID_0003&MI_00\8&1230c469&0&0000" -Name "Mfg" -Value "@oem9.inf,%companyname%;NVidia Inc."

#Changes VMware SVGA 3D to NVidia GeoFarce G210
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\PCI\VEN_15AD&DEV_0405&SUBSYS_040515AD&REV_00\3&61aaa01&0&78" -Name "DeviceDesc" -Value "NVidia GeoFarce G210"

#Changes %companyname%;VMware, Inc. to NVidia Inc
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\PCI\VEN_15AD&DEV_0405&SUBSYS_040515AD&REV_00\3&61aaa01&0&78" -Name "Mfg" -Value "@oem9.inf,%companyname%;NVidia Inc."

SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000



#Changes VMware SVGA 3D to NVidia GeoFarce G210
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" -Name "HardwareInformation.AdapterString" -Value "NVidia GeoFarts G210"

#Changes VMware SVGA 3D to NVidia GeoFarce G210
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" -Name "HardwareInformation.ChipType" -Value "NVidia GeoFarce Graphics Acraper"

#Changes VMware SVGA 3D to NVidia GeoFarce G210
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" -Name "HardwareInformation.AdapterString" -Value "NVidia GeoFarce G210"








#Changes VMware SVGA 3D to NVidia GeoFarce G210
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" -Name "DeviceDesc" -Value "NVidia GeoFarce G210"

#Changes VMware SVGA 3D to NVidia GeoFarce G210
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" -Name "Device Description" -Value "NVidia GeoFarce G210"

#Changes VMware SVGA 3D to NVidia GeoFarce G210
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" -Name "HardwareInformation.AdapterString" -Value "NVidia GeoFarce G210"

#Changes VMware Virtual SVGA 3D Graphics Adapter to Julab Kuthi Graphics Adapter - Julab Kuthi means wet shit bitch
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" -Name "HardwareInformation.ChipType" -Value "Julab Kuthi Graphics Adapter"

#Changes provider name to Hijde Gaand Marau Gaandu Inc. - transsexual who gets butt fucked and was born from an ass
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" -Name "ProviderName" -Value "Hijde Gaand Marau Gaandu Inc."

#Changes VMware SVGA 3D to NVidia GeoFarce G210
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" -Name "Device Description" -Value "NVidia GeoFarce G210"

#Changes driver description to Copra Cephili - latin meaning shit for brains
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" -Name "DriverDesc" -Value "Copra Cephili"

#Changes VMware VMCI Bus Device to Indian Short Bus Bhindu Rider
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\PCI\VEN_15AD&DEV_0740&SUBSYS_074015AD&REV_10\3&61aaa01&0&3F" -Name "DeviceDesc" -Value "Indian Short Bus Bhindu Rider"

#Changes VMware VMCI Bus Device to Indian Short Bus Bhindu Rider
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\PCI\VEN_15AD&DEV_0740&SUBSYS_074015AD&REV_10\3&61aaa01&0&3F" -Name "Mfg" -Value "@oem4.inf,%loc.Copra Cephilimanufacturer%;Copra Cephili, Inc."


ControlSet001\Enum\PCI\VEN_15AD&DEV_0740&SUBSYS_074015AD&REV_10\3&61aaa01&0&3F


#Changes Standard Universal PCI to USB Host Controller to Sarcastic Bastard of the Universe middle finger to USB Host Controller
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\PCI\VEN_15AD&DEV_0774&SUBSYS_197615AD&REV_00\4&bbf9765&0&0088" -Name "DeviceDesc" -Value "Sarcastic Bastard of the Universe middle finger to USB Host Controller"

#Changes VMware VMCI Host Device to Dell Host Host Device
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\ROOT\VMWVMCIHOSTDEV\0000" -Name "DeviceDesc" -Value "Dell Host Host Device"

#Changes Manufacturer to Arse Wipe Inc
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\ROOT\VMWVMCIHOSTDEV\0000" -Name "Mfg" -Value "@oem9.inf,%companyname%;Arse Wipe Inc."

#Changes VMWare Virtual SCSI Disk Device to SANDisk Ultra II 480GB
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\SCSI\Disk&Ven_VMware_&Prod_VMware_Virtual_S\5&1ec51bf7&0&000000" -Name "FriendlyName" -Value "SANDisk Ultra II 480GB"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\ControlSet001\Enum\SCSI\CdRom&Ven_NECVMWar&Prod_VMware_SATA_CD01\5&2edf08dd&0&010000" -Name "FriendlyName" -Value "Lite-On SATA Internal DVD/RW"

#Adds registry entry to hide VMWare Tools from the Uninstall menu in the control panel
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{D2236796-832D-4E8C-A337-0C6EEB8ACB27}" /v SystemComponent /t REG_DWORD /d 1 /f

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e96f-e325-11ce-bfc1-08002be10318}\0000" -Name "DriverDesc" -Value "Copra Cephili Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e96f-e325-11ce-bfc1-08002be10318}\0000" -Name "FriendlyName" -Value "Lite-On SATA Internal DVD/RW"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0129" -Name "HardwareInformation.BiosString" -Value "Microsoft Device Type"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0129" -Name "HardwareInformation.ChipType" -Value "Bahen Chod"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0129" -Name "HardwareInformation.DacType" -Value "Rhondi"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0132" -Name "DriverDesc" -Value "Rubber Baby Buggy Bumpers"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0132" -Name "ProviderName" -Value "Thunderbolt Grease Slapper, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0132" -Name "FriendlyName" -Value "Lite-On SATA Internal DVD/RW"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0133" -Name "DriverDesc" -Value "Rubber Baby Buggy Bumpers"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0133" -Name "ProviderName" -Value "Thunderbolt Grease Slapper, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Class\{4d36e97d-e325-11ce-bfc1-08002be10318}\0133" -Name "FriendlyName" -Value "Lite-On SATA Internal DVD/RW"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemInformation" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\HardwareConfig\{218b4d56-793e-bfc7-5d24-bd68fbc799e3}" -Name "SystemManufacturer" -Value "Dell, Inc."

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\HardwareConfig\{218b4d56-793e-bfc7-5d24-bd68fbc799e3}" -Name "SystemProductName" -Value "Church of the Subgenius"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\HardwareConfig\{44744d56-0f1e-b464-664d-67294eb4debd}" -Name "SystemManufacturer" -Value "Dell, Inc."

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\HardwareConfig\{44744d56-0f1e-b464-664d-67294eb4debd}" -Name "SystemProductName" -Value "Church of the Subgenius"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\HardwareConfig\Current" -Name "SystemManufacturer" -Value "Dell, Inc."

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\HardwareConfig\Current" -Name "SystemProductName" -Value "Church of the Subgenius"







#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\HARDWARE\DESCRIPTION\System\BIOS" -Name "SystemManufacturer" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\HARDWARE\DESCRIPTION\System\BIOS" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemInformation" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemInformation" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemInformation" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemInformation" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemInformation" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemInformation" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"
#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemInformation" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"
#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemInformation" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"
#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemInformation" -Value "Wang Computers, Inc"

#Changes NECVMWar VMware SATA CD01 to Lite-On SATA Internal DVD/RW - WORKS
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SystemInformation" -Name "SystemProductName" -Value "Thunderbolt Grease Slapper MK2"
