if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
    cd /d "%~dp0"
    xmrig.exe
    pause
