@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: etc + zil
rigel.exe -a etchash+zil ^
    -o [1]stratum+ssl://etc.2miners.com:11010 -u [1]YOUR_ETC_WALLET ^
    -o [2]zmp+tcp://us1-zil.shardpool.io:3333 -u [2]YOUR_ZIL_WALLET ^
    -w my_rig --log-file logs/miner.log

:: ethw + zil
::rigel.exe -a ethash+zil --coin [1]ethw ^
::   -o [1]stratum+ssl://ethw.2miners.com:12020 -u [1]YOUR_ETHW_WALLET ^
::   -o [2]zmp+tcp://us1-zil.shardpool.io:3333  -u [2]YOUR_ZIL_WALLET ^
::   -w my_rig --log-file logs/miner.log

:: kls + zil
::rigel.exe -a karlsenhash+zil ^
::   -o [1]stratum+tcp://pool.woolypooly.com:3132 -u [1]YOUR_KLS_WALLET ^
::   -o [2]zmp+tcp://us1-zil.shardpool.io:3333    -u [2]YOUR_ZIL_WALLET ^
::   -w my_rig --log-file logs/miner.log

:: nexa + zil
::rigel.exe -a nexapow+zil ^
::   -o [1]stratum+tcp://pool.vipor.net:5084   -u [1]YOUR_NEXA_WALLET ^
::   -o [2]stratum+tcp://us.crazypool.org:5005 -u [2]YOUR_ZIL_WALLET ^
::   -w my_rig --log-file logs/miner.log

:: nexa + zil (with overclock settings)
:: set core clock offset to 100 for both algorithms
:: set core clock to 1470 and memory clock to 5000 for nexa (algo #1)
:: set core clock to 1200 and memory clock offset to +1000 for zil (algo #2)
:: note: setting `--lock-mclock` to `X` will force the miner to "unlock" memory clocks for zil
::rigel.exe -a nexapow+zil ^
::   -o [1]stratum+tcp://pool.vipor.net:5084   -u [1]YOUR_NEXA_WALLET ^
::   -o [2]stratum+tcp://us.crazypool.org:5005 -u [2]YOUR_ZIL_WALLET ^
::   --cclock 100 ^
::   --lock-cclock [1]1470 --lock-mclock [1]5000 ^
::   --lock-cclock [2]1200 --lock-mclock [2]X --mclock [2]1000 ^
::   -w my_rig --log-file logs/miner.log

:: alternative syntax for specifying algorithms (used in RaveOS)
::rigel.exe ^
::   --a1 nexapow -o [1]stratum+tcp://pool.vipor.net:5084   -u [1]YOUR_NEXA_WALLET ^
::   --a2 zil     -o [2]stratum+tcp://us.crazypool.org:5005 -u [2]YOUR_ZIL_WALLET ^
::   --cclock 100 ^
::   --lock-cclock [1]1470 --lock-mclock [1]5000 ^
::   --lock-cclock [2]1200 --lock-mclock [2]X --mclock [2]1000 ^
::   -w my_rig --log-file logs/miner.log

pause
