if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
    //cd rigel-1.15.1-win
    cd xmrig-6.8.1
    xmrig.exe --coin=XMR -o solo-xmr.2miners.com:2222 -u 49nWjdPoicnBRM4NtvWHtFSbPmFT4FfSUMSuxbFZUc6SPqo8PE7yvAy6ihk4MGaaNR1r9vrewPmuS88KPCRXEXWvV9svrLs.JJCHEEZIT3 -p x
    pause
    //start /min start.bat
