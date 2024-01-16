reg load HKLM\TempHive C:\Windows\System32\config\Software

reg add HKLM\TempHive\Classes\.exe /d exefile /f
reg add HKLM\TempHive\Classes\exefile\DefaultIcon /d "\%%1" /f
reg add HKLM\TempHive\Classes\exefile\shell\open\command /d "\"%%1\" %%*" /f

reg unload HKLM\TempHive