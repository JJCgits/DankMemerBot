@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: iron
:: "[fork]" OC parameters are for fishhash algorithm (post-fork)
rigel.exe -a ironfish ^
    -o stratum+tcp://iron.kryptex.network:7777 -u YOUR_IRON_WALLET ^
    -w my_rig ^
    --lock-cclock 1470 --lock-mclock 810 --cclock 100 ^
    --lock-cclock [fork]1300 --lock-mclock [fork]X --mclock [fork]700 ^
    --enable-fork ^
    --log-file logs/miner.log

pause
