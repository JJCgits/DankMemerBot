if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
    cd rigel-1.15.1-win
    bash /min start.sh
