rem Turn OFF proxy 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f

rem Run start-up apps
start microsoft-edge:https://outlook.office365.com 
start C:\ProgramData\Microsoft\Windows\"Start Menu"\Programs\"Google Chrome.lnk" open.spotify.com --new-window
start C:\ProgramData\Microsoft\Windows\"Start Menu"\Programs\"Outlook 2016.lnk"
start %userprofile%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\"Slack Technologies"\Slack.lnk
