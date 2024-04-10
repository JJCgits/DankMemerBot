if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
    cd xmrig-6.21.2
    start /min start.bat
