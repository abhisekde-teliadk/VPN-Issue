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
