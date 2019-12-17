rem Delete Credentials
cmdkey /delete WindowsLive:target=virtualapp/didlogical
cmdkey /delete MicrosoftAccount:target=SSO_POP_Device

rem Delete temp Windows files and cache 
del /s /q /f C:\Windows\Temp\* 
del /s /q /f %userprofile%\AppData\Local\Temp\* 
del /s /q /f C:\Windows\Prefetch\* 

rem Delete Chrome temp history
del /s /q /f %userprofile%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\* 
del /s /q /f %userprofile%\AppData\Local\Google\Chrome\"User Data"\Default\*History* 
del /s /q /f %userprofile%\"Local Settings"\"Application Data"\Google\Chrome\"User Data"\Default\Cache\* 
del /s /q /f %userprofile%\"Local Settings"\"Application Data"\Google\Chrome\"User Data"\Default\*History* 

rem Delete IE history
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32

rem Turn ON proxy 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v AutoConfigURL /t REG_SZ    /d ""                  /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer   /t REG_SZ    /d http://tmhinj2:8080 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable   /t REG_DWORD /d 1                   /f

rem open VPN client
"C:\Program Files (x86)\Common Files\Pulse Secure\JamUI\Pulse.exe" -show
