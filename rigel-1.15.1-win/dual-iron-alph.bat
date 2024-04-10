@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: to manually balance GPU resources between primary and secondary algorithms
:: use `--dual-mode` parameter, e.g.
:: `--dual-mode a12:r0.1` - minimum impact on the primary algorithm
:: `--dual-mode a12:r64` - maximum impact on the primary algorithm

:: iron + alph
rigel.exe -a fishhash+alephium ^
    -o [1]stratum+tcp://de.ironfish.herominers.com:1145  -u [1]YOUR_IRON_WALLET ^
    -o [2]stratum+tcp://de.alephium.herominers.com:1199  -u [2]YOUR_ALPH_WALLET ^
    -w my_rig --log-file logs/miner.log

pause
