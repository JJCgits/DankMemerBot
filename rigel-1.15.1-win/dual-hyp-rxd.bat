@echo off
@cd /d "%~dp0"

:: replace the wallet addresses with your own

:: to manually balance GPU resources between primary and secondary algorithms
:: use `--dual-mode` parameter, e.g.
:: `--dual-mode a12:r0.1` - minimum impact on the primary algorithm
:: `--dual-mode a12:r32.0` - maximum impact on the primary algorithm

:: hyp + rxd
rigel.exe -a ethashb3+sha512256d ^
    -o [1]stratum+tcp://rth.eu.ekapool.com:18896 -u [1]YOUR_HYP_WALLET ^
    -o [2]stratum+tcp://pool.vipor.net:5066      -u [2]YOUR_RXD_WALLET ^
    -w my_rig --log-file logs/miner.log

pause
