# Win10_ZB_UX360UAK-UserConfig
The following is my own Windows10 UserConfig on a ASUS ZenBook UX360UAK
![UserDesktop](https://github.com/matmutant/Win10_ZB_UX360UAK-UserConfig/blob/master/ScreenShots/WindowsDesktopUseC.png) 


## Hardware:  
### ASUS ZenBook UX360UAK  
- [x] CPU: Core [i7-7500U](https://ark.intel.com/products/95451/Intel-Core-i7-7500U-Processor-4M-Cache-up-to-3_50-GHz-)
- [X] iGP: Intel HD620
- [x] RAM: SK Hynix LPDDR3-1866 16GB, H9CCNNNCLTMLAR-NUD (`wmic memorychip list full`)
- [x] SSD: 500GB M.2 SATA3 SanDisk SD8SN8U512G1002
- [x] OS: Windows 10 x64 Home

## Installed Software  
To get similar informations I had when using Conky on my GNU-Linux laptop, I installed the following:
- [Rainmeter](https://www.rainmeter.net/) (see Rainmeter config part)
- Coretemp  

To address the loud fan issue I used:
- NoteBookFanControl (see dedicated part)

Misc software installed:
- NotePad++ (with plugin installed like Compare and XML Tools)
- [Process Explorer](https://docs.microsoft.com/en-us/sysinternals/downloads/process-explorer)
- 7-Zip
- [Image Resizer](http://www.bricelam.net/ImageResizer/)
- LibreOffice 5.3.4.2 (x64)
- Office 365
- VirtualBox
- [...]  
- WSL (with ZSH used as main Shell)

## Loud fan issue workaround  
This laptop fan being extremely loud and whistling (even when idle, the fan simply never stops at the factory settings), it is needed to use a third party software to adress this issue:  
**NoteBookFanControl** ([NBFC](https://github.com/hirschmann/nbfc/releases)) by @hirschmann  
Note that the UX360UAK is natively supported by the software

## DPI Scaling  
Some apps don't render well on the 13.3" 1080p screen, for those, it is needed to disable scaling in compatibility settings  
More info on [technet](https://technet.microsoft.com/en-us/library/dn528847.aspx?f=255&MSPPError=-2147217396)

## Disabling Cortana  
Who really needs Cortana? I don't.  
run regedit, and find (or create) the following key:
```
HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search.
```
create a new `DWORD (32-bit) value`, name it `Allow Cortana`, set its value to 0, exit regedit; reboot   

## Z-Shell config
see [ZSH](https://github.com/matmutant/Win10_ZB_UX360UAK-UserConfig/tree/master/ZSH) folder and its dedicated README  

## Office config
see [Office](https://github.com/matmutant/Win10_ZB_UX360UAK-UserConfig/tree/master/Office) folder and its dedicated README
## Rainmeter config  
![screenshot of Rainmeter](https://github.com/matmutant/Win10_ZB_UX360UAK-UserConfig/blob/master/ScreenShots/rainmeter2017101.png)  
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
