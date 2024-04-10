@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: to manually balance GPU resources between primary and secondary algorithms
:: use `--dual-mode` parameter, e.g.
:: `--dual-mode a12:r0.1` - minimum impact on the primary algorithm
:: `--dual-mode a12:r64` - maximum impact on the primary algorithm

:: abel + alph
rigel.exe -a abelian+alephium ^
   -o [1]stratum+ssl://pool-us.zkprovers.com:57778      -u [1]ABEL_POOL_USERNAME -p [1]ABEL_POOL_PASSWORD ^
   -o [2]stratum+tcp://de.alephium.herominers.com:1199  -u [2]YOUR_ALPH_WALLET ^
   -w my_rig --log-file logs/miner.log

:: abel + iron
::rigel.exe -a abelian+ironfish ^
::   -o [1]stratum+ssl://pool-us.zkprovers.com:57778  -u [1]ABEL_POOL_USERNAME -p [1]ABEL_POOL_PASSWORD  ^
::   -o [2]stratum+tcp://iron.kryptex.network:7777    -u [2]YOUR_IRON_WALLET ^
::   -w my_rig --log-file logs/miner.log

:: abel + kls
::rigel.exe -a abelian+karlsenhash ^
::   -o [1]stratum+ssl://global-service.abelpool.io:27778 -u [1]ABEL_POOL_USERNAME -p [1]ABEL_POOL_PASSWORD ^
::   -o [2]stratum+tcp://pool.woolypooly.com:3132         -u [2]YOUR_KLS_WALLET ^
::   -w my_rig --log-file logs/miner.log

:: abel + pyi
::rigel.exe -a abelian+pyrinhash ^
::   -o [1]stratum+ssl://global-service.abelpool.io:27778 -u [1]ABEL_POOL_USERNAME -p [1]ABEL_POOL_PASSWORD ^
::   -o [2]stratum+tcp://de.pyrin.herominers.com:1177     -u [2]YOUR_PYI_WALLET ^
::   -w my_rig --log-file logs/miner.log

:: abel + rxd
::rigel.exe -a abelian+sha512256d ^
::   -o [1]stratum+ssl://global-service.abelpool.io:27778 -u [1]ABEL_POOL_USERNAME -p [1]ABEL_POOL_PASSWORD ^
::   -o [2]stratum+tcp://pool.vipor.net:5066              -u [2]YOUR_RXD_WALLET ^
::   -w my_rig --log-file logs/miner.log

pause
