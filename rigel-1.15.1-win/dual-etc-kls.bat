@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: to manually balance GPU resources between primary and secondary algorithms
:: use `--dual-mode` parameter, e.g.
:: `--dual-mode a12:r0.1` - minimum impact on the primary algorithm
:: `--dual-mode a12:r64` - maximum impact on the primary algorithm

:: etc + kls (2miners and woolypooly)
rigel.exe -a etchash+karlsenhash ^
    -o [1]stratum+ssl://etc.2miners.com:11010      -u [1]YOUR_ETC_WALLET ^
    -o [2]stratum+tcp://pool.woolypooly.com:3132   -u [2]YOUR_KLS_WALLET ^
    -w my_rig --log-file logs/miner.log

:: etc + kls (2miners and herominers)
::rigel.exe -a etchash+karlsenhash ^
::    -o [1]stratum+ssl://etc.2miners.com:11010          -u [1]YOUR_ETC_WALLET ^
::    -o [2]stratum+tcp://de.karlsen.herominers.com:1195 -u [2]YOUR_KLS_WALLET ^
::    -w my_rig --log-file logs/miner.log

pause
