@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: iron + zil
:: "[1]" OC parameters are for ironfish algorithm (pre-fork)
:: "[fork][1]" OC parameters are for fishhash algorithm (post-fork)
:: "[2]" OC parameters are for zil (both pre- and post-fork)
rigel.exe -a ironfish+zil ^
    -o [1]stratum+tcp://de.ironfish.herominers.com:1145 -u [1]YOUR_IRON_WALLET ^
    -o [2]zmp+tcp://us1-zil.shardpool.io:3333           -u [2]YOUR_ZIL_WALLET ^
    -w my_rig ^
    --lock-cclock [1]1470 --lock-mclock [1]810 --cclock [1]100 ^
    --lock-cclock [fork][1]1300 --lock-mclock [fork][1]X --mclock [fork][1]700 ^
    --lock-cclock [2]1200 --lock-mclock [2]X --mclock [2]1000 ^
    --enable-fork ^
    --log-file logs/miner.log

pause
