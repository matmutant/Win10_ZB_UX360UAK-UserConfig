# Office PowerPoint  

## Increasing PowerPoint bitmap export resolution  
To get an acceptable resolution for the slides exported in any bitmap format, it is needed to alter the default setting (96ppi 0x00000060) and increase it. to get good compromise between resolution and file size, I personnaly chose 150ppi.  
run regedit, and find (or create) the following key:  
```
HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\PowerPoint\Options
```

* Open registry editor  
* Search for ```HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\PowerPoint\Options``` 
* Options > New (on the Edit menu) > DWORD Value and name it ```ExportBitmapResolution``` 
![regedit screen](https://github.com/matmutant/Win10_ZB_UX360UAK-UserConfig/blob/master/ScreenShots/PPT_regedit.png) 
* Modify its value as decimal and set the value data box as wanted  
![regedit screen](https://github.com/matmutant/Win10_ZB_UX360UAK-UserConfig/blob/master/ScreenShots/PPT_exportRes_DWORD.png) 

NB1: Replace 16.0 by the relevent Office version if your are not using Office 2016  
Then, create a new `DWORD (32-bit) value`, name it `ExportBitmapResolution`, set to the wanted **decimal value** (here 150), exit regedit; reboot or restart PowerPoint  
NB2: In Hexadecimal, 150 is 0x00000096, so don't panic if you see 96 (hexadecimal) as the DWORD value after checking regedit again.  
NB3: Absolute maxiumum resolution is 307ppi (more info on ![support.microsoft.com](https://support.microsoft.com/en-us/help/827745/how-to-change-the-export-resolution-of-a-powerpoint-slide)) 
