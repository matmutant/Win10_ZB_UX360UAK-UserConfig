# Win10_ZB_UX360UAK-UserConfig
The following is my own Windows10 UserConfig on a ASUS ZenBook UX360UAK
![UserDesktop](https://github.com/matmutant/Win10_ZB_UX360UAK-UserConfig/blob/master/ScreenShots/WindowsDesktopUseC.png) 


## Hardware:  
### ASUS ZenBook UX360UAK  
- [x] CPU: Core ![i7-7500U](https://ark.intel.com/products/95451/Intel-Core-i7-7500U-Processor-4M-Cache-up-to-3_50-GHz-)
- [X] iGP: Intel HD620
- [x] RAM: SK Hynix LPDDR3-1866 16GB, H9CCNNNCLTMLAR-NUD (`wmic memorychip list full`)
- [x] SSD: 500GB M.2 SATA3 SanDisk SD8SN8U512G1002
- [x] OS: Windows 10 x64 Home

## Installed Software  
To get similar informations I had when using Conky on my GNU-Linux laptop, I installed the following:
- ![Rainmeter](https://www.rainmeter.net/) (see Rainmeter config part)
- Coretemp  

To address the loud fan issue I used:
- NoteBookFanControl (see dedicated part)

Misc software installed:
- NotePad++ (with plugin installed like Compare and XML Tools)
- ![Process Explorer](https://docs.microsoft.com/en-us/sysinternals/downloads/process-explorer)
- 7-Zip
- ![Image Resizer](http://www.bricelam.net/ImageResizer/)
- LibreOffice 5.3.4.2 (x64)
- Office 365
- VirtualBox
- [...]

## Loud fan issue workaround  
This laptop fan being extremely loud and whistling (even when idle, the fan simply never stops at the factory settings), it is needed to use a third party software to adress this issue:  
**NoteBookFanControl** (![NBFC](https://github.com/hirschmann/nbfc/releases)) by @hirschmann  
Note that the UX360UAK is natively supported by the software

## DPI Scaling  
Some apps don't render well on the 13.3" 1080p screen, for those, it is needed to disable scaling in compatibility settings  
More info on ![technet](https://technet.microsoft.com/en-us/library/dn528847.aspx?f=255&MSPPError=-2147217396)

## Disabling Cortana  
Who really needs Cortana? I don't.  
run regedit, and find (or create) the following key:
```
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search.
```
create a new `DWORD (32-bit) value`, name it `Allow Cortana`, set its value to 0, exit regedit; reboot  

## Increasing PowerPoint bitmap export resolution
To get an acceptable resolution for the slides exported in any bitmap format, it is needed to alter the default setting (96ppi 0x00000060) and increase it. to get good compromise between resolution and file size, I personnaly chose 150ppi.  
run regedit, and find (or create) the following key:  
```
HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\PowerPoint\Options
```
NB1: Replace 16.0 by the relevent Office version if your are not using Office 2016  
Then, create a new `DWORD (32-bit) value`, name it `ExportBitmapResolution`, set to the wanted **decimal value** (here 150), exit regedit; reboot or restart PowerPoint  
NB2: In Hexadecimal, 150 is 0x00000096, so don't panic if you see 96 (hexadecimal) as the DWORD value after checking regedit again.  
NB3: Absolute maxiumum resolution is 307ppi (more info on !(support.microsoft.com)[https://support.microsoft.com/en-us/help/827745/how-to-change-the-export-resolution-of-a-powerpoint-slide])  

## Rainmeter config  
![screenshot of Rainmeter](https://github.com/matmutant/Win10_ZB_UX360UAK-UserConfig/blob/master/ScreenShots/rainmeter.png)  
See Rainmeter dedicated folders for modified .ini files

## Battery reports  
in cmd, enter the following:
```
powercfg /batteryreport /output "C:\Users\[username]\battery-report.html"
```

## VirtualBox HDD inflating 
For some reason I had choosen a far too small size for my Bunsenlabs virtual machine HDD, if it ever happens again, here is how to expand the .vdi size and reallocate the partition:  
```
cd "C:\Program Files\Oracle\VirtualBox"
VBoxManage modifyhd “C:\Users\mathi\Documents\VirtualBox VMs\BunsenTest\BunsenTest.vdi” --resize 16384
```
Then boot up the virtual machine on a gparted live iso (or any GNU-Linux distro that ships with it) and move/resize the partitions to fit the new virtual HDD size.  
Reboot, Enjoy.  
