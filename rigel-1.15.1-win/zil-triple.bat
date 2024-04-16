@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: etc + kls + zil
rigel.exe -a etchash+karlsenhash+zil ^
    -o [1]stratum+ssl://etc.2miners.com:11010      -u [1]YOUR_ETC_WALLET ^
    -o [2]stratum+tcp://pool.woolypooly.com:3132   -u [2]YOUR_KLS_WALLET ^
    -o [3]zmp+tcp://us1-zil.shardpool.io:3333      -u [3]YOUR_ZIL_WALLET ^
    -w my_rig --log-file logs/miner.log

:: erg + rxd + zil (with overclock settings)
:: set core clock offset to 100 for all algorithms
:: set core clock to 1470, unlock memory clock, and set memory clock offset to +750 for erg+rxd (algo #1+#2)
:: set core clock to 1200, unlock memory clock, and set memory clock offset to +1000 for zil (algo #3)
::rigel.exe -a autolykos2+sha512256d+zil ^
::   -o [1]stratum+tcp://erg.kryptex.network:7777 -u [1]YOUR_ERG_WALLET ^
::   -o [2]stratum+tcp://pool.vipor.net:5066      -u [2]YOUR_RXD_WALLET ^
::   -o [3]zmp+tcp://us1-zil.shardpool.io:3333    -u [3]YOUR_ZIL_WALLET ^
::   --cclock 100 ^
::   --lock-cclock [1]1470 --lock-mclock [1]X --mclock [1]750 ^
::   --lock-cclock [3]1200 --lock-mclock [3]X --mclock [3]1000 ^
::   -w my_rig --log-file logs/miner.log

:: alternative syntax for specifying algorithms (used in RaveOS)
::rigel.exe ^
::   --a1 etchash     -o [1]stratum+ssl://etc.2miners.com:11010      -u [1]YOUR_ETC_WALLET ^
::   --a2 karlsenhash -o [2]stratum+tcp://pool.woolypooly.com:3132   -u [2]YOUR_KLS_WALLET ^
::   --a3 zil         -o [3]zmp+tcp://us1-zil.shardpool.io:3333      -u [3]YOUR_ZIL_WALLET ^
::   -w my_rig --log-file logs/miner.log

pause
